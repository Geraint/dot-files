setlocal nofoldenable
let b:phpfold_text_right_lines = 1
let b:phpfold_text_percent = 1
let b:phpfold_doc_with_funcs = 1
let b:phpfold_group_args = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal autoindent      " set the cursor at same indent as line above
setlocal expandtab       " expand <Tab>s with spaces; death to tabs!
setlocal shiftwidth=4    " number of spaces to use for each step of (auto)indent.
setlocal softtabstop=4   " set virtual tab stop (compat for 8-wide tabs)
setlocal tabstop=4       " for proper display of files with tabs
