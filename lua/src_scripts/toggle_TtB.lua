

local toggleTtB = function ()
   local actual_buf = vim.api.nvim_get_current_buf()
   local actual_buf_name = string.sub(vim.fn.bufname(),1,8)

   if actual_buf_name ~= 'NvimTree' then
       _G.buffer_origen_2712a21 = actual_buf
       vim.cmd('NvimTreeFocus')
       return
   end
   if _G.buffer_origen_2712a21 and vim.fn.buflisted(actual_buf_name) then
       vim.cmd('buffer '.._G.buffer_origen_2712a21)
       vim.cmd('startinsert')
   end
   return
end

return toggleTtB
