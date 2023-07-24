require('bufferline').setup{
    options = {
        diagnostics = 'nvim-lsp',
        show_buffer_close_icons = false,
        show_buffer_icons = false,
        enforce_regular_tabs = true
    }
}

vim.g.transparent_groups = vim.list_extend(
  vim.g.transparent_groups or {},
  vim.tbl_map(function(v)
    return v.hl_group
  end, vim.tbl_values(require('bufferline.config').highlights))
)
