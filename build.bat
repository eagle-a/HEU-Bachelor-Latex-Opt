@echo ========================================
@echo HEU 本科毕业论文编译脚本
@echo ========================================

@echo Cleaning old files......
del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul
if exist main.out del /F /Q main.out 2>nul

@echo Making xelatex......
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

@echo ========================================
@echo 书脊文件处理
@echo ========================================
@echo 注意：请先编辑 spine.docx 文件填写个人信息
@echo 然后手动将 spine.docx 转换为 PDF
@echo 或者使用以下命令（如果安装了 LibreOffice）:
@echo libreoffice --headless --convert-to pdf spine.docx
@echo ========================================

del /S *.aux *.bbl *.blg *.out *.thm *.toc *.lof *.fen *.toe *.lot *.ten *.log *.bak *.loa *.glo *.ist *.synctex.gz 2>nul

@echo ========================================
@echo 编译完成！
@echo 生成的文件：
@echo - main.pdf (论文主体)
@echo - spine.pdf (请从 spine.docx 手动转换)
@echo - thesis.pdf (完整论文，需要 spine.pdf)
@echo ========================================
exit