
local close_buffer = function() 
    local buf = vim.api.nvim_get_current_buf()
    local mod = vim.api.nvim_buf_get_option(buf,'modified')
    if mod then 
        vim.notify('Salve Antes de Fechar',vim.log.levels,WARN)
        return
    end
    vim.cmd('bp')
    vim.cmd('bdelete '..buf)
    return
end

return close_buffer
