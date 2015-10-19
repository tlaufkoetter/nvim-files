function! PythonFolds()
	let thisline = getline(v:lnum)
	if match(thisline, '^\(\s\+class\)\|^\(\s\+def\)') >= 0
		return ">2"
	elseif match(thisline, '^\(class\)\|^\(def\)') >= 0
		return ">1"
	elseif match(thisline, '^\(\s\+\)\|^\(\s*$\)') >= 0
		return "="
	endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=PythonFolds()

function! PythonFoldText()
	let foldsize = (v:foldend-v:foldstart)
	return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=PythonFoldText()
