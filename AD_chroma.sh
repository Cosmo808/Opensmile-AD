cd ~/Cosmo/opensmile
for file in $(ls ./traindata/AD/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/chroma/chroma_fft.conf -I ./traindata/AD/$file -O ./traindata/ADchroma/$csv
gnuplot -e "inputfile='./traindata/ADchroma/$csv';outputfile='./traindata/ADchromagplt/$png'" ./traindata/chroma_plot.plt
done
