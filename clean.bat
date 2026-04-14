@echo Deleting cache files: main.aux, main.out, main.log, main.toc
del main.aux main.out main.log main.toc 2>nul
for %%a in (bak,log,aux,toc,dvi,thm,nav,snm,out,exa,bbl,blg,cut,ilg,ind,lof,fen,toe,lot,ten,loa, run.xml) do (del *.%%a /f/s/q/a:-h)
