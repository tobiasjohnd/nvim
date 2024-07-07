return {
    { "williamboman/mason.nvim", opts = {} },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd", -- requires python
                "cmake", -- requires unzip
                "bashls", -- requires node
                "pyright",
            },
            handlers = {
                function(server)
                    require("lspconfig")[server].setup({})
                end
            },
        },
        dependencies = {
            "neovim/nvim-lspconfig",
        }
    }
}
