vim.g.mapleader = " ";
vim.keymap.set('n','<C-1>', ":NvimTreeToggle<CR>")
vim.keymap.set('n','<C-2>', ":NvimTreeFocus<CR>")
vim.keymap.set('n','<C-h>', ":BufferPrevious<CR>")
vim.keymap.set('n','<C-l>', ":BufferNext<CR>")
vim.keymap.set('n','<C-q>', ":BufferClose<CR>")
vim.keymap.set('n','<C-t>',":sp | terminal<CR>G")
vim.keymap.set('n','<leader>f1',":FlutterRun<CR>")
vim.keymap.set('n','<leader>f2',":FlutterReload<CR>")
vim.keymap.set('n','<leader>f3',":FlutterRestart<CR>")
vim.keymap.set('n','<leader>f4',":FlutterQuit<CR>")
vim.keymap.set('n','<leader>f5',":FlutterDevices<CR>")
vim.keymap.set('n','<leader>f6',":FlutterEmulators<CR>")
-- Run current Dart file
vim.keymap.set('n', '<leader>d1', function()
  local file = vim.fn.expand('%')
  if file:match('%.dart$') then
    vim.cmd('!dart run ' .. file)
  end
end, { noremap = true, silent = false, desc = "Run Dart file" })
-- Show diagnostics list
vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>', { silent = true, noremap = true, desc = "Toggle Trouble" })
vim.keymap.set('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', { silent = true, noremap = true, desc = "Workspace Diagnostics" })
vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', { silent = true, noremap = true, desc = "Document Diagnostics" })
