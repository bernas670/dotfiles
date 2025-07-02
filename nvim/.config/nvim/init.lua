-- https://jaketrent.com/post/set-node-version-nvim/
local node_bin = "/home/bernas/.local/share/pnpm/nodejs/24.3.0/bin"
vim.g.node_host_prog = node_bin .. "/node"
vim.cmd("let $PATH = '" .. node_bin .. ":' . $PATH")

require("config.lazy")
require("bernas")
