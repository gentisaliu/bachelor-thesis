echo "PDFLATEX 1st"
echo "##############################################"
pdflatex -interaction=batchmode thesis.tex
echo "##############################################"
echo "BIBTEX"
echo "##############################################"
bibtex thesis
echo "##############################################"
echo "PDFLATEX 2nd"
echo "##############################################"
pdflatex -interaction=batchmode thesis.tex
echo "##############################################"
echo "PDFLATEX 3rd"
echo "##############################################"
pdflatex -interaction=batchmode thesis.tex
echo "##############################################"
echo "Cleanup"
find . -name "*.aux" -type f -delete
find . -name "*.log" -type f -delete
find . -name "*.toc" -type f -delete
find . -name "*.lof" -type f -delete
find . -name "*.out" -type f -delete
find . -name "*.lot" -type f -delete
find . -name "*.blg" -type f -delete
echo DONE
date
echo "##############################################"
