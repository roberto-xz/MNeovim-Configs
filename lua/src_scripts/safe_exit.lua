
local safe_exit = function()
    as_buffers_unsaved = false
    
    for _,buf in ipairs(vim.api.nvim_list_bufs()) do 
        if vim.api.nvim_buf_get_option(buf, "modified") then
           as_buffers_unsaved = true    
        end
    end

    if not as_buffers_unsaved then 
        vim.cmd("NvimTreeClose")
        vim.cmd("quitall")
        return true
    end
    return false
end
return safe_exit
