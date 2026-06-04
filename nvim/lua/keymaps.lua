local M = {}

function M.setup()

        vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

        vim.keymap.set("n", "<leader>x", "<cmd>lua loadstring(vim.fn.getline('.'))()<CR>", { desc = "Execute current line (lua)" })
        vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { noremap = true, silent = true, desc = "Trigger omnifunc" })

        ----TELESCOPE----
        local map = vim.keymap.set
        map("n", "<leader>sf", function() require("telescope.builtin").find_files() end, { desc = "Telescope: find files" })
        map("n", "<leader>sg", function() require("telescope.builtin").live_grep() end, { desc = "Telescope: live grep" })
        map("n", "<leader>sb", function() require("telescope.builtin").buffers() end, { desc = "Telescope: buffers" })
        map("n", "<leader>sh", function() require("telescope.builtin").help_tags() end, { desc = "Telescope: help tags" })
        map("n", "<leader>ssb", function() require("telescope.builtin").current_buffer_fuzzy_find() end, { desc = "Telescope: buffer fuzzy find" })
        map("n", "<leader>sd", function() require("telescope.builtin").diagnostics() end, { desc = "Telescope: diagnostics" })
end

return M
