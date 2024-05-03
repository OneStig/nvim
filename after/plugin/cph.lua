local home = os.getenv("HOME")
vim.g["cph#dir"] = home .. "/documents/GitHub/contests"
vim.g["cph#cpp#compile_command"] = "clang++ -std=c++20 solution.cpp -o cpp.out"
