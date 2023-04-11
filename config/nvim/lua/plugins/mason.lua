return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        opts = function(_, opts)
            table.insert(opts.ensure_installed, "prettierd")
        end,
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                },
            })
        end,
    },
}
