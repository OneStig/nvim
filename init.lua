local home = os.getenv("HOME")
vim.g["cpa#dir"] = home .. "/Documents/GitHub/cpa-cache/cache"

require("scripts")
