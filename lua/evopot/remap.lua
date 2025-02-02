vim.g.mapleader = " ";
vim.keymap.set('n','<A-1>', ":NvimTreeToggle<CR>")
vim.keymap.set('n','<A-2>', ":NvimTreeFocus<CR>")
vim.keymap.set('n','<A-h>', ":BufferPrevious<CR>")
vim.keymap.set('n','<A-l>', ":BufferNext<CR>")
vim.keymap.set('n','<A-q>', ":BufferClose<CR>")
vim.keymap.set('n','<A-t>',":sp | terminal<CR>G")
vim.keymap.set('n','<leader>f1',":FlutterRun<CR>")
vim.keymap.set('n','<leader>f2',":FlutterReload<CR>")
vim.keymap.set('n','<leader>f3',":FlutterRestart<CR>")
vim.keymap.set('n','<leader>f4',":FlutterQuit<CR>")
vim.keymap.set('n','<leader>f5',":FlutterDevices<CR>")
vim.keymap.set('n','<leader>f6',":FlutterEmulators<CR>")

