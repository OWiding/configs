require('lint').linters_by_ft = {
    typescript = {'elsint'},
}

vim.api.nvim_create_autocmd({ "bufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})