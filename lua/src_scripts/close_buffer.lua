
local close_buffer = function()
    local buffer = vim.api.nvim_get_current_buf()
    local buffes = vim.api.nvim_list_bufs()
    local counts = 0;

    for _,buff_temp in ipairs(buffes) do 
       if vim.fn.buflisted(buff_temp) ~= 0 then counts = counts+1 end 
    end

    if counts > 1 then
        -- vim.cmd('write!')
        vim.cmd('bp')
        vim.cmd('bdelete! '..buffer)
    end
end
return close_buffer
