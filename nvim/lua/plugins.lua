local fn = vim.fn 
 local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim' 

 if fn.empty(fn.glob(install_path)) > 0 then 
     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}) 
     vim.cmd [[packadd packer.nvim]] 
 end 

 return require('packer').startup(function(use) 
     use 'wbthomason/packer.nvim' 
     use 'nvim-tree/nvim-web-devicons' 
     use 'nvim-lua/plenary.nvim' 
     use { 
         'nvim-tree/nvim-tree.lua', 
         tag = 'v1.5.0', 
         requires = { 'nvim-tree/nvim-web-devicons' }, 
         config = function() 
             local ok, nvim_tree = pcall(require, 'nvim-tree') 
             if not ok then return end 
              
             nvim_tree.setup({ 
                 hijack_netrw = true, 
                 view = { 
                     width = 28, 
                     side = 'left', 
                 }, 
                 renderer = { 
                     root_folder_label = false, 
                     indent_markers = { 
                         enable = true, 
                         icons = { 
                             corner = '└', 
                             edge = '│', 
                             item = '│', 
                             none = ' ', 
                         }, 
                     }, 
                     icons = { 
                         glyphs = { 
                             default = '', 
                             symlink = '', 
                             folder = { 
                                 arrow_closed = '', 
                                 arrow_open = '', 
                                 default = '', 
                                 open = '', 
                                 empty = '', 
                                 empty_open = '', 
                                 symlink = '', 
                                 symlink_open = '', 
                             }, 
                         }, 
                     }, 
                 }, 
                 filters = { dotfiles = false }, 
                 git = { enable = true, ignore = false }, 
                 on_attach = function(bufnr) 
                     local api = require('nvim-tree.api') 
                     local opts = function(desc) 
                         return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true } 
                     end 
                     api.config.mappings.default_on_attach(bufnr) 
                     vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open')) 
                     vim.keymap.set('n', '<C-q>', function() api.tree.close() end, opts('Close Tree')) 
                 end, 
             }) 
         end, 
     } 

     -- Fuzzy Finder (Telescope) 
     use { 
         'nvim-telescope/telescope.nvim', 
         commit = 'a0bbec2', 
         tag = '0.1.8',  
         requires = { 'nvim-lua/plenary.nvim' }, 
         config = function() 
             local ok, telescope = pcall(require, 'telescope') 
             if not ok then return end 
              
             local actions = require('telescope.actions') 
             telescope.setup({ 
                 defaults = { 
                     preview = { 
                         treesitter = false, 
                     }, 
                     prompt_prefix = '  ', 
                     selection_caret = ' ', 
                     entry_prefix = '  ', 
                     sorting_strategy = 'ascending', 
                     layout_config = { 
                         horizontal = { 
                             prompt_position = 'top', 
                             preview_width = 0.55, 
                         }, 
                         width = 0.85, 
                         height = 0.80, 
                     }, 
                     mappings = { 
                         i = { 
                             ['<Esc>'] = actions.close, 
                             ['<C-q>'] = actions.close, 
                         }, 
                     }, 
                     borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }, 
                 }, 
             }) 
         end, 
     } 

     use {
         'mattn/emmet-vim',
         setup = function()
             vim.g.user_emmet_leader_key = ','
             vim.g.user_emmet_install_global = 1
         end
     }
 end)
