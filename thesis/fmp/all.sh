#for i in tHq_kt tHq_kv tHW_kt tHW_kv tt_qq_s tt_gg_s tt_gg_t tt_gg_u dilep_tt; do
#for i in singlet_t singlet_tW1 singlet_tW2 singlet_s; do
#for i in H_gg H_VBF H_Strahl H_tth H_tHq H_tHW; do
for i in dilep_emu_tt; do
    rm -f $i.pdf $i.log $i.aux diagram_$i.*
    pdflatex $i.tex
    mpost diagram_$i.mp
    pdflatex $i.tex
    pdflatex $i.tex
    pdfcrop $i.pdf $i.pdf
done
