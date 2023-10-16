local status_ok , configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
configs.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"javascript", "help", "typescript" , "c", "lua", "rust" , "html"},
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},
}
