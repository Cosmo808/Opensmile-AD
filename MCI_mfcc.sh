cd ~/Cosmo/opensmile
for file in $(ls ./traindata/MCI/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/mfcc/MFCC12_E_D_A.conf -I ./traindata/MCI/$file -O ./traindata/MCImfcc/$csv
done
