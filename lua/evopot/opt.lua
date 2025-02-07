vim.cmd[[colorscheme onedark]]
vim.opt.shell = "/bin/bash"
vim.opt.ic = true;
vim.opt.hls = true;
vim.opt.number = true;
vim.opt.tabstop = 2;
vim.opt.clipboard = "unnamedplus";
vim.g.neoformat_enabled_dart = { "dartfmt" }
-- Enable autoformat on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.dart',
  callback = function()
    vim.lsp.buf.format()
  end,
})


vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true


