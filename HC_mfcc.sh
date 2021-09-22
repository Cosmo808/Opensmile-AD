cd ~/Cosmo/opensmile
for file in $(ls ./traindata/HC/)
do
csv=`echo $file | sed 's/\.wav/\.csv/'`
png=`echo $file | sed 's/\.wav/\.png/'`
SMILExtract -C ./config/mfcc/MFCC12_E_D_A.conf -I ./traindata/HC/$file -O ./traindata/HCmfcc/$csv
done
