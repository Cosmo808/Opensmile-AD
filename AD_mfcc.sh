cd ~/Cosmo/opensmile
for file in $(ls ./traindata/AD/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/mfcc/MFCC12_E_D_A.conf -I ./traindata/AD/$file -O ./traindata/ADmfcc/$csv
done
