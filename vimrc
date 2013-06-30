call pathogen#infect()                                                                                                                                                  
                                                                                                                                                                        
syntax enable                                                                                                                                                           
filetype plugin indent on                                                                                                                                               
                                                                                                                                                                        
" general settings I like to have                                                                                                                                       
set ts=2                                                                                                                                                                
set expandtab                                                                                                                                                           
set shiftwidth=2                                                                                                                                                        
set smartindent                                                                                                                                                         
set smartcase                                                                                                                                                           
set incsearch

" settings for unite                                                                                                                                                    
let g:unite_source_history_yank_enable = 1                                                                                                                              
call unite#filters#matcher_default#use(['matcher_fuzzy'])                                                                                                               
nnoremap <leader>t :Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>                                                                             
nnoremap <leader>f :Unite -no-split -buffer-name=files   -start-insert file<cr>                                                                                         
nnoremap <leader>r :Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>                                                                                     
nnoremap <leader>o :Unite -no-split -buffer-name=outline -start-insert outline<cr>                                                                                      
nnoremap <leader>y :Unite -no-split -buffer-name=yank    history/yank<cr>                                                                                               
nnoremap <leader>e :Unite -no-split -buffer-name=buffer  -start-insert -quick-match buffer<cr>                                                                          
                                                                                                                                                                        
" Custom mappings for the unite buffer                                                                                                                                  
autocmd FileType unite call s:unite_settings()                                                                                                                          
function! s:unite_settings()                                                                                                                                            
  " Play nice with supertab                                                                                                                                             
  let b:SuperTabDisabled=1                                                                                                                                              
  " Enable navigation with control-j and control-k in insert mode                                                                                                       
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)                                                                                                                  
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)                                                                                                              
endfunction

inoremap {      {}<Left>                                                                                                                                                
inoremap {<CR>  {<CR>}<Esc>O                                                                                                                                            
inoremap {{     {                                                                                                                                                       
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
