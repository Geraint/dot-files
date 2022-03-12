local M = {}

function M.bind_keys()
	vim.g.phpactorActivateOverlapingMappings = true
	vim.g.phpactorCustomMappings = {
		{'<Leader>pp', '<Plug>phpactorContextMenu', 'n'},
		{'<Leader>pn', '<Plug>phpactorNavigate', 'n'},
		{'<Leader>pt', '<Plug>phpactorTransform', 'n'},
	}
end

return M
