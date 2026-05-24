lua << EOF
_G.vim.islist = vim.islist or vim.tbl_islist or function(t)
    return type(t) == 'table' and (#t > 0 or next(t) == nil)
end
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.keymap.set('i', '!!', [[<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>

</body>
</html><esc>6ki]], { buffer = true })
  end
})
EOF

set termguicolors
set number
set mouse=a
set clipboard=unnamedplus
set expandtab
set shiftwidth=4
set tabstop=4
set lazyredraw
set synmaxcol=500
set redrawtime=10000
set nowrap
set completeopt=menu,menuone,noselect
set fillchars+=eob:\ 
set signcolumn=yes
let mapleader = " "

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" COLORSCHEME & HIGHLIGHTS

colorscheme desert

highlight Normal          guibg=NONE      guifg=#cdd6f4
highlight NormalNC        guibg=NONE      guifg=#a6adc8
highlight NonText         guibg=NONE      guifg=#1e1e2e
highlight EndOfBuffer     guibg=NONE      guifg=#1e1e2e
highlight SignColumn      guibg=NONE

highlight CursorLine      guibg=#1e2030
highlight CursorLineNr    guifg=#e5c890   guibg=NONE      gui=bold
highlight LineNr          guifg=#585b70   guibg=NONE
highlight Visual          guibg=#2d3f76

highlight Comment         guifg=#6c7086   gui=italic
highlight Statement       guifg=#cba6f7   gui=bold
highlight Constant        guifg=#fab387
highlight Identifier      guifg=#89dceb
highlight PreProc         guifg=#f38ba8
highlight Type            guifg=#a6e3a1   gui=bold
highlight Special         guifg=#f9e2af
highlight String          guifg=#a6e3a1
highlight Number          guifg=#fab387
highlight Boolean         guifg=#cba6f7   gui=bold
highlight Function        guifg=#89b4fa   gui=bold
highlight Keyword         guifg=#cba6f7   gui=bold
highlight Operator        guifg=#89dceb
highlight Delimiter       guifg=#cdd6f4

highlight Error           guifg=#f38ba8   guibg=NONE      gui=bold
highlight ErrorMsg        guifg=#f38ba8   guibg=NONE
highlight WarningMsg      guifg=#f9e2af   guibg=NONE
highlight SpellBad        guifg=#f38ba8   gui=undercurl   guisp=#f38ba8
highlight! link SpellCap WarningMsg

highlight Pmenu           guibg=#1e1e2e   guifg=#cdd6f4
highlight PmenuSel        guibg=#2d3f76   guifg=#cdd6f4
highlight PmenuSbar       guibg=#313244
highlight PmenuThumb      guibg=#585b70

highlight NormalFloat     guibg=#1e1e2e   guifg=#cdd6f4
highlight FloatBorder     guibg=NONE      guifg=#585b70

highlight StatusLine      guibg=#1e1e2e   guifg=#cdd6f4
highlight StatusLineNC    guibg=NONE      guifg=#585b70
highlight VertSplit       guibg=NONE      guifg=#313244
highlight WinSeparator    guibg=NONE      guifg=#313244

highlight TelescopeBorder         guifg=#585b70   guibg=NONE
highlight TelescopeNormal         guifg=#cdd6f4   guibg=NONE
highlight TelescopePromptBorder   guifg=#cba6f7   guibg=NONE
highlight TelescopePromptTitle    guifg=#1e1e2e   guibg=#cba6f7   gui=bold
highlight TelescopeResultsTitle   guifg=#585b70   guibg=NONE
highlight TelescopePreviewTitle   guifg=#585b70   guibg=NONE
highlight TelescopeSelection      guibg=#2d3f76   guifg=#cdd6f4

highlight NvimTreeNormal           guibg=NONE      guifg=#cdd6f4
highlight NvimTreeNormalNC         guibg=NONE
highlight NvimTreeWinSeparator     guifg=#313244   guibg=NONE
highlight NvimTreeFolderIcon       guifg=#89b4fa
highlight NvimTreeFolderName       guifg=#89b4fa
highlight NvimTreeOpenedFolderName guifg=#cba6f7   gui=bold
highlight NvimTreeRootFolder       guifg=#f9e2af   gui=bold
highlight NvimTreeGitDirty         guifg=#f9e2af
highlight NvimTreeGitNew           guifg=#a6e3a1
highlight NvimTreeIndentMarker     guifg=#313244

highlight LspFloatWinNormal        guibg=NONE      guifg=#cdd6f4
highlight LspFloatWinBorder        guibg=NONE      guifg=#585b70

highlight Terminal guibg=NONE





nnoremap <silent> <C-e> :NvimTreeToggle<CR>
inoremap <silent> <C-e> <Esc>:NvimTreeToggle<CR>
tnoremap <silent> <C-e> <C-\><C-n>:NvimTreeToggle<CR>


nnoremap <silent> <C-f> :lua require('telescope.builtin').live_grep()<CR>
inoremap <silent> <C-f> <Esc>:lua require('telescope.builtin').live_grep()<CR>
nnoremap <silent> <C-p> :lua require('telescope.builtin').find_files()<CR>
inoremap <silent> <C-p> <Esc>:lua require('telescope.builtin').find_files()<CR>

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-z> u
inoremap <C-z> <Esc>ua
nnoremap <C-y> <C-r>
inoremap <C-y> <Esc><C-r>a

nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+

nnoremap <C-k> dd
inoremap <C-k> <Esc>dda
vnoremap <C-k> d

nnoremap <CR> o
nnoremap <Space> i
nnoremap <BS> X
nnoremap <silent> <Esc> :call ActionStopSearch()<CR>

inoremap . .<C-x><C-o>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <CR>  pumvisible() ? (complete_info(['selected']).selected != -1 ? "\<C-y>" : "\<CR>") : "\<CR>"

nnoremap <C-t> :call FloatTerm()<CR>
inoremap <C-t> <Esc>:call FloatTerm()<CR>
tnoremap <C-t> <C-\><C-n>:call SmartExit()<CR>

nnoremap <silent> <leader><leader> :call ShowMyMenu()<CR>
nnoremap <silent> <Space><Space>   :call ToggleMyMenu()<CR>




function! SelRange(input)
    let l:input = trim(a:input)
    if l:input =~ '^\d\+$'
        execute 'normal! ' . l:input . 'G'
        return
    endif
    if l:input =~ '^\d\+-\d\+$'
        let l:parts = split(l:input, '-')
        let l:from = str2nr(l:parts[0])
        let l:to   = str2nr(l:parts[1])
        let l:last = line('$')
        if l:from < 1 || l:to < 1 || l:from > l:last || l:to > l:last
            echohl ErrorMsg | echo 'Sel: line out of range' | echohl None
            return
        endif
        execute 'normal! ' . l:from . 'GV' . l:to . 'G'
        return
    endif
    echohl ErrorMsg | echo 'Sel: usage  :Sel <line>  or  :Sel <from>-<to>' | echohl None
endfunction

command! -nargs=1 Sel call SelRange(<q-args>)




function! SmartExit()
    if nvim_win_get_config(0).relative != '' || &buftype == 'terminal' || winnr('$') > 1
        let l:buf = bufnr('%')
        close
        if getbufvar(l:buf, '&buftype') == 'terminal'
            execute 'bwipeout! ' . l:buf
        endif
        return
    endif
    execute "qa"
endfunction

nnoremap <silent> <C-q> :call SmartExit()<CR>
inoremap <silent> <C-q> <Esc>:call SmartExit()<CR>
tnoremap <silent> <C-q> <C-\><C-n>:call SmartExit()<CR>



let g:big_file_limit = 1024 * 1024 * 1

function! OptimizeBigFiles()
    let l:fsize = getfsize(expand("%"))
    if l:fsize > g:big_file_limit || l:fsize == -2
        setlocal syntax=off
        setlocal undolevels=-1
        setlocal noswapfile
        setlocal noundofile
        setlocal foldmethod=manual
        setlocal nobackup
    endif
endfunction


function! StartScreen()
    if argc() == 0 && line2byte('$') == -1
        enew
        setlocal buftype=nofile bufhidden=wipe noswapfile nonumber norelativenumber
        setlocal winhl=Normal:NormalFloat

        lua << EOF
            local art = [[
 ██████   █████                   █████   █████  ███                 
░░██████ ░░███                   ░░███   ░░███  ░░░                  
 ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████  
 ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███ 
 ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███ 
 ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███ 
 █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████
░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░ 
                                                                     
                                                                     
                                                                     
            ]]
            
            vim.api.nvim_set_var('screen_banner', vim.split(art, "\n"))
EOF

        let l:banner = g:screen_banner
        let l:links = ['', ' [n]       [t]      [q] 󰍵 ', '']
        let l:output = []
        
        let l:top = (winheight(0) / 2) - (len(l:banner) / 2) - 2
        for i in range(max([0, l:top])) | call add(l:output, '') | endfor
        
        for l:line in (l:banner + l:links)
            let l:pad = (winwidth(0) - strdisplaywidth(l:line)) / 2
            call add(l:output, repeat(' ', max([0, l:pad])) . l:line)
        endfor

        setlocal modifiable | call setline(1, l:output) | setlocal nomodifiable
        
        nnoremap <buffer> n :call ActionNewFile()<CR>
        nnoremap <buffer> t :call FloatTerm()<CR>
        nnoremap <buffer> q :call ActionOnlyExit()<CR>
    endif
endfunction


function! FloatTerm()
    let l:buf = nvim_create_buf(v:false, v:true)
    let l:width  = float2nr(&columns * 0.8)
    let l:height = float2nr(&lines   * 0.8)
    let l:row    = float2nr(&lines   * 0.1)
    let l:col    = float2nr(&columns * 0.1)
    let l:opts = {
        \ 'relative': 'editor',
        \ 'row':      l:row,
        \ 'col':      l:col,
        \ 'width':    l:width,
        \ 'height':   l:height,
        \ 'style':    'minimal',
        \ 'border':   'rounded',
        \ 'title':    ' Terminal ',
        \ 'title_pos':'center'
        \ }
    let l:win = nvim_open_win(l:buf, v:true, l:opts)
    call setwinvar(l:win, '&winhl', 'Normal:NormalFloat,FloatBorder:FloatBorder')
    terminal
    setlocal nonumber norelativenumber signcolumn=no
    startinsert
endfunction



source $HOME/.config/nvim/dialogs.vim
lua require('plugins')
lua require('lsp-config').setup()

autocmd VimEnter   * call StartScreen()
autocmd BufReadPre * call OptimizeBigFiles()


filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css        setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python     setlocal omnifunc=python3complete#Complete
autocmd FileType xml        setlocal omnifunc=xmlcomplete#CompleteTags


