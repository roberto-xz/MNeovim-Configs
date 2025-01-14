
local bufferSwap = function(direction)
    local buffer = vim.api.nvim_get_current_buf()

    -- se o buffer atual não for temporário
    if vim.fn.buflisted(buffer) ~= 0 then
        if direction == 'l' then vim.cmd('bp') end
        if direction == 'r' then vim.cmd('bn') end
    end
    return
end

return bufferSwap
