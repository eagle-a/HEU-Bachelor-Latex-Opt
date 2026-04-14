@echo Cleaning old files......
@echo Deleting cache files: main.aux, main.out, main.log, main.toc
del main.aux main.out main.log main.toc 2>nul
for %%a in (bak,log,aux,toc,dvi,thm,nav,snm,out,exa,bbl,blg,cut,ilg,ind,lof,fen,toe,lot,ten,loa, run.xml) do (del *.%%a /f/s/q/a:-h)
del /S *.ind *.ilg *.thm *.toe *.aux *.bbl *.blg *.out *.toc *.lof *.fen *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul
if exist main.out del /F /Q main.out 2>nul

@echo make thesis......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

@echo make cover......
xelatex a3cover.tex
xelatex thesis.tex

@echo clean......
del /S *.ind *.ilg *.thm *.toe *.aux *.bbl *.blg *.out *.toc *.lof *.fen *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul
exit