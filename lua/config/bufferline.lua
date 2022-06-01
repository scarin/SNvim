local vim = G_VIM

require('bufferline').setup {
  options = {
    -- mode = "tabs",
    numbers = "none",
    close_command = "bdelete! %d",
    -- right_mouse_command = "bdelete! %d",
    -- left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    -- indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = ' *',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf)
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    diagnostics = false, --"nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "(" .. count .. ")"
    end,
    offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left", padding = 1 } },
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_at_end', -- 'insert_after_current',
    view = "multiwindow",
    themable = true,
  }
}
