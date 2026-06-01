local M = {}

function M.setup()
  -- Execute current line as Lua
  vim.keymap.set("n", "<leader>x", "<cmd>lua loadstring(vim.fn.getline('.'))()<CR>", { desc = "Execute current line (lua)" })

  -- Keep omnifunc on Ctrl-Space (terminal dependent)
  vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { noremap = true, silent = true, desc = "Trigger omnifunc" })

  -- Ensure omnifunc and buffer-local LSP mappings when an LSP attaches
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local bufnr = args.buf
      vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

      -- buffer-local go-to-definition
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "LSP: Go to definition" })

      -- buffer-local Telescope LSP pickers (optional)
      vim.keymap.set("n", "<leader>sr", function() require("telescope.builtin").lsp_references() end, { buffer = bufnr, desc = "Telescope: LSP references" })
      vim.keymap.set("n", "<leader>sd", function() require("telescope.builtin").lsp_definitions() end, { buffer = bufnr, desc = "Telescope: LSP definitions" })
      vim.keymap.set("n", "<leader>si", function() require("telescope.builtin").lsp_implementations() end, { buffer = bufnr, desc = "Telescope: LSP implementations" })
      vim.keymap.set("n", "<leader>ss", function() require("telescope.builtin").lsp_document_symbols() end, { buffer = bufnr, desc = "Telescope: LSP document symbols" })
    end,
  })

  -- Global Telescope mappings under <Leader>s
  local map = vim.keymap.set
  map("n", "<leader>sf", function() require("telescope.builtin").find_files() end, { desc = "Telescope: find files" })
  map("n", "<leader>sg", function() require("telescope.builtin").live_grep() end, { desc = "Telescope: live grep" })
  map("n", "<leader>sb", function() require("telescope.builtin").buffers() end, { desc = "Telescope: buffers" })
  map("n", "<leader>sh", function() require("telescope.builtin").help_tags() end, { desc = "Telescope: help tags" })
  map("n", "<leader>ssb", function() require("telescope.builtin").current_buffer_fuzzy_find() end, { desc = "Telescope: buffer fuzzy find" })
  map("n", "<leader>sd", function() require("telescope.builtin").diagnostics() end, { desc = "Telescope: diagnostics" })
end

return M

