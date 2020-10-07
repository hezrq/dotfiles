let g:firenvim_config = {
    \ 'localSettings': {
        \ '.*': {
            \ 'selector': 'textarea, div[role="textbox"]',
            \ 'priority': 0,
        \ }
    \ }
\ }

let g:dont_write = v:false
function! My_Write(timer) abort
	let g:dont_write = v:false
	write
endfunction

function! Delay_My_Write() abort
	if g:dont_write
		return
	end
	let g:dont_write = v:true
	call timer_start(10000, 'My_Write')
endfunction

augroup Firenvim
  au TextChanged * ++nested call Delay_My_Write()
  au TextChangedI * ++nested call Delay_My_Write()
  au BufEnter github.com_*.txt set filetype=markdown
  au BufEnter play.rust-lang.org_*.txt set filetype=rust
  au BufEnter play.golang.org_*.txt set filetype=go
augroup END
