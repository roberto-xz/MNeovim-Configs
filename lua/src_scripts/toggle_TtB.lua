
local toggleTtB = function ()
   local actual_buf = vim.api.nvim_get_current_buf()
   local actual_buf_name = string.sub(vim.fn.bufname(),1,8)
   
   -- focado em um buffer
   if actual_buf_name ~= 'NvimTree' then
       -- verifica se o buffer é temporário
       if vim.fn.buflisted(actual_buf) ~= 0 then 
           _G.buffer_origen_2712a21 = actual_buf
           vim.cmd('NvimTreeFocus')
           return
       end
       -- o buffer é temporário
       _G.buffer_origen_2712a21 = nil
       return
   end

   -- focado no nvim-tree
   -- verfica se o buffer origem não é temporário
   if _G.buffer_origen_2712a21 ~= nil then
       vim.cmd('buffer '.._G.buffer_origen_2712a21)
       vim.cmd('startinsert')
   end
end

return toggleTtB
