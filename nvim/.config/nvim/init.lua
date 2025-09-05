-- local handle = io.popen("node -v")
-- local version = handle:read("*a")
-- handle:close()
--
-- local major_version = tonumber(version:match("v(%d+)"))
--
-- if major_version and major_version < 18 then
--   vim.notify("Detected node " .. major_version .. ", using 24.3.0")
  -- https://jaketrent.com/post/set-node-version-nvim/
  local node_bin = "/home/bernas/.local/share/pnpm/nodejs/24.3.0/bin"
  vim.g.node_host_prog = node_bin .. "/node"
  vim.cmd("let $PATH = '" .. node_bin .. ":' . $PATH")
-- end

require("config.lazy")
require("bernas")
