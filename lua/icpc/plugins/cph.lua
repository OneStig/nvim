return {
    {
        'p00f/cphelper.nvim',
        dependencies = {
            { 'nvim-lua/plenary.nvim' }
        },
        config = function()
            vim.g["cph#dir"] = "~/Documents/GitHub/contests"
            vim.g["cph#cpp#compile_command"] = "clang++ -std=c++20 solution.cpp -o cpp.out"
        end
    }
}
