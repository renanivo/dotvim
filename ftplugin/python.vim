set wildignore+=htmlcov,lib,include
let NERDTreeIgnore+=['^htmlcov$', '^include$']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '^(htmlcov|include)$',
  \ }

compiler pytest

command! -nargs=* -range=% FixImports :<line1>,<line2>! isort <args> -
command! -nargs=* -range=% Format :<line1>,<line2>! black --skip-string-normalization --line-length 79 <args> - 2> /dev/null
