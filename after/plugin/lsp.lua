local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}

lspconfig.clangd.setup {}

--lspconfig.clangd.setup {
	--cmd = {
		--"clangd",
		--"--background-index",
		--"--clang-tidy",
		--"--suggest-missing-includes",
		--"--header-insertion=iwyu",
		--"--header-insertion-decorators",
		--"--compile-commands-dir=build", -- Adjust the directory as needed for your project
		--"--fallback-style=llvm",
		--"-j=2", -- Adjust the number of threads for indexing based on your CPU cores
		--"--pch-storage=memory",
		--"--cross-file-rename",
		--"--completion-style=detailed",
		--"--function-arg-placeholders=false",
		--"--log=error",
		--"--pretty",
		--"-std=c++17" -- This is the flag to enforce C++17 standard
	--},
	---- other configuration options...
--}


local cmp = require'cmp'

cmp.setup({
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }
})
