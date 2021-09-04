
set termguicolors
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     

nnoremap <C-x> :call Toggle_transparent_background()<CR>  
