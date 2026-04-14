@echo Cleaning old files......
del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul
if exist main.out del /F /Q main.out 2>nul

@echo Making xelatex......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul
exit