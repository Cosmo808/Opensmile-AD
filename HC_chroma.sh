cd ~/Cosmo/opensmile
for file in $(ls ./traindata/HC/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/chroma/chroma_fft.conf -I ./traindata/HC/$file -O ./traindata/HCchroma/$csv
gnuplot -e "inputfile='./traindata/HCchroma/$csv';outputfile='./traindata/HCchromagplt/$png'" ./traindata/chroma_plot.plt
done
