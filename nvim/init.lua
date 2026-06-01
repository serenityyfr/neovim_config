-- Keep `options` module at the top
require('config.options')
-- Keybinds
require('config.keymaps').setup()
-- Plugin manager
require('config.lazy')

-- Highlight on copying text 
-- (    Comment out and restart to see what this does. )
require('autocommands.highlightonyank')
