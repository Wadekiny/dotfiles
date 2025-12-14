local config_path = vim.fn.stdpath("config")
local plugin_packages_path = config_path .. "/plugin_packages"
local lazy_path = plugin_packages_path .. "/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
        lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)

-- Example using a list of specs with the default options

require("lazy").setup(
    {
        {import = "plugins.groups"},
    },
	{
		root = plugin_packages_path,
		default = {
			lazy = true,
		}
	}
)
