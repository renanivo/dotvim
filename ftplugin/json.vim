command! -nargs=* -range=% Format :<line1>,<line2>! python -m json.tool - 2> /dev/null
