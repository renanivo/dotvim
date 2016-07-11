set wildignore+=htmlcov,lib,include
let NERDTreeIgnore+=['^htmlcov$', '^lib$', '^include$']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '^(htmlcov|lib|include)$',
  \ }

compiler pytest

command! -nargs=* -range=% FixImports :<line1>,<line2>! isort <args> -
