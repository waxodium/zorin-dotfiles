function! OpenMenu(items)
    let l:buf = nvim_create_buf(v:false, v:true)
    let l:h = len(a:items) + 2
    let l:opts = {'relative': 'editor', 'width': 30, 'height': l:h, 'row': (&lines-l:h)/2, 'col': (&columns-30)/2, 'style': 'minimal', 'border': 'rounded'}
    call nvim_open_win(l:buf, v:true, l:opts)
    let l:display = ['']
    for l:i in a:items | call add(l:display, '  ' . l:i.label) | endfor
    call nvim_buf_set_lines(l:buf, 0, -1, v:false, l:display + [''])
    setlocal nomodifiable cursorline
    let b:menu_acts = a:items
    nnoremap <buffer><silent> <CR> :call ExecuteMenuChoice()<CR>
    nnoremap <buffer><silent> q :close<CR>
    nnoremap <buffer><silent> <Esc> :close<CR>
endfunction

function! ExecuteMenuChoice()
    let l:idx = line('.') - 2
    if l:idx >= 0 && l:idx < len(b:menu_acts)
        let l:Handler = b:menu_acts[l:idx].handler
        close
        execute 'call ' . l:Handler . '()'
    endif
endfunction

function! ActionNewFile()
    let l:name = input('File Name: ')
    if !empty(l:name) | execute 'edit ' . l:name | write | endif
endfunction

function! ActionSettings()
    execute 'vsplit ' . expand('$MYVIMRC')
endfunction

function! ActionFind()
    lua require('telescope.builtin').live_grep()
endfunction

function! ActionStopSearch()
    silent! call clearmatches()
    let @/ = ""
    set nohlsearch
    lclose
endfunction

function! ActionExplorer()
    NvimTreeToggle
endfunction

function! ActionSaveExit()
    silent! wa
    execute "qa"
endfunction

function! ActionOnlyExit()
    execute "qa!"
endfunction

function! ToggleMyMenu()
    if exists('b:menu_acts')
        close
    else
        call ShowMyMenu()
    endif
endfunction

function! ShowMyMenu()
    let l:items = [
        \ {'label': ' New File      󰈙',     'handler': 'ActionNewFile'},
        \ {'label': ' Explorer      󰉋',     'handler': 'ActionExplorer'},
        \ {'label': ' Find Text     󰍉',    'handler': 'ActionFind'},
        \ {'label': ' Settings      󰒓',     'handler': 'ActionSettings'},
        \ {'label': ' Save & Exit   󰆓',  'handler': 'ActionSaveExit'},
        \ {'label': ' Force Exit!   󰍵',  'handler': 'ActionOnlyExit'}
        \ ]
    call OpenMenu(l:items)
endfunction
