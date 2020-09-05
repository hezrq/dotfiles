let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_virtual_text_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
let g:lsp_signs_information = {'text': 'i'}
let g:lsp_signs_hint = {'text': '?'}

nnoremap gd :<C-u>LspDefinition<CR>
nnoremap gI :<C-u>LspHover<CR>
nnoremap gr :<C-u>LspReferences<CR>
nnoremap gd :<C-u>LspDocumentDiagnostics<CR>
nnoremap gf :<C-u>LspDocumentFormat<CR>

