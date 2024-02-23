local neotree = require("neo-tree")

neotree.paste_default_config()

neotree.window = {
    width = 30,
    mappings = {
      ["<space>"] = false, -- disable space until we figure out which-key disabling
      ["[b"] = "prev_source",
      ["]b"] = "next_source",
      O = "system_open",
      Y = "copy_selector",
      h = "parent_or_close",
      l = "child_or_open",
      o = "open",
    },
    fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
      ["<C-j>"] = "move_cursor_down",
      ["<C-k>"] = "move_cursor_up",
    },
  },
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_current",
    use_libuv_file_watcher = vim.fn.has "win32" ~= 1,
  },
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function(_) vim.opt_local.signcolumn = "auto" end,
    },
  },
}
