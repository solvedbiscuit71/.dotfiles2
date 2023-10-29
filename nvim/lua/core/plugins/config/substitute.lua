require('substitute').setup {
    yank_substituted_text = false,
    highlight_substituted_text = {
        enabled = true,
        timer = 200,
    },
}

vim.keymap.set('n', 'gs', require('substitute').operator, { noremap = true })
vim.keymap.set('n', 'gss', require('substitute').line, { noremap = true })
vim.keymap.set('n', 'gS', require('substitute').eol, { noremap = true })
vim.keymap.set('x', 'gs', require('substitute').visual, { noremap = true })
vim.keymap.set('n', 'gx', require('substitute.exchange').operator, { noremap = true })
vim.keymap.set('x', 'gx', require('substitute.exchange').visual, { noremap = true })
vim.keymap.set('n', 'gxx', require('substitute.exchange').line, { noremap = true })
vim.keymap.set('n', 'gr', require('substitute.range').operator, { noremap = true })
vim.keymap.set('x', 'gr', require('substitute.range').visual, { noremap = true })
vim.keymap.set('n', 'gR', function()
	require('substitute.range').operator({
		subject = {motion='iw'},
		range = {motion='ga'}
	})
end, { noremap = true })
