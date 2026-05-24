local M = {}
M.setup = function()
    -- 1. Javascript & Typescript
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
        callback = function()
            vim.lsp.start({
                name = "ts-ls",
                cmd = {"typescript-language-server", "--stdio"},
                root_dir = vim.fn.getcwd(),
            })
        end,
    })

    -- 2. CSS
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "css", "scss" },
        callback = function()
            local server = "vscode-css-language-server"
            vim.lsp.start({
                name = "vscode-web-ls",
                cmd = {server, "--stdio"},
                root_dir = vim.fn.getcwd(),
            })
        end,
    })

    -- 3. XML
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "xml",
        callback = function()
            vim.lsp.start({
                name = "lemminx",
                cmd = {"lemminx"},
                root_dir = vim.fn.getcwd(),
            })
        end,
    })

    vim.cmd([[
        highlight LspFloatWinNormal guibg=NONE guifg=#c0caf5
        highlight LspFloatWinBorder guibg=NONE guifg=#dfaf5f
        highlight Pmenu guibg=NONE guifg=#c0caf5
        highlight PmenuSel guibg=#33415e guifg=#c0caf5
    ]])
end
return M
