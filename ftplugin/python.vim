set wildignore+=htmlcov,lib,include
let NERDTreeIgnore+=['^htmlcov$', '^lib$', '^include$']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '^(htmlcov|lib|include)$',
  \ }
