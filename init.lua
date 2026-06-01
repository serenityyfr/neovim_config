--print("********************************")
--print("*                              *")
--print("*                              *")
--print("*                              *")
--print("*              |||             *")
--print("*              |||             *")
--print("*            =======           *")
--print("*              xxx  ;          *")
--print("*              xxx x           *")
--print("*               x x            *")
--print("*              xxx             *")
--print("*             x x              *")
--print("*             x x              *")
--print("*              x x             *")
--print("*             x   x            *")
--print("*                              *")
--print("*                              *")
--print("*                              *")
--print("********************************")

-- Keep `options` module at the top
--    `options`   - some vim options
--    `lazy`      - lazy setup, all plugin files are called from here
require('config.options')
require('config.keymaps')
require('config.lazy')



-- [[ AUTOCOMMANDS ]]
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight when yanking (copying) text',
    callback = function()
        vim.highlight.on_yank()
    end,
})
