let g:lsp_settings = {
\  'pyls': {
\     'plugins': {
\       'pycodestyle': {'enabled': v:false},
\       'pydocstyle': {'enabled': v:true},
\       'pylint': {'enabled': v:true},
\       'flake8': {'enabled': v:false},
\       'jedi_definition': {
\         'follow_imports': v:true,
\         'follow_builtin_imports': v:true,
\       },
\     }
\   }
\ }

