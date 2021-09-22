cd ~/Cosmo/opensmile
for file in $(ls ./traindata/MCI/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/chroma/chroma_fft.conf -I ./traindata/MCI/$file -O ./traindata/MCIchroma/$csv
gnuplot -e "inputfile='./traindata/MCIchroma/$csv';outputfile='./traindata/MCIchromagplt/$png'" ./traindata/chroma_plot.plt
done
