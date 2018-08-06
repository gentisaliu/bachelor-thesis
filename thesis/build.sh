echo PDFLATEX 1st
echo '##############################################'
cd src/
pdflatex src/main.tex | tee ../log_1.txt
echo '##############################################'
echo BIBTEX
echo '##############################################'
bibtex src/main | tee ../log_2.txt
echo '##############################################'
echo PDFLATEX 2nd
echo '##############################################'
pdflatex src/main.tex | tee ../log_3.txt
echo '##############################################'
echo PDFLATEX 3rd
echo '##############################################'
pdflatex arc/main.tex | tee ../log_4.txt
echo '##############################################'
echo DONE
date
echo '##############################################'
