#PBS -S /bin/bash
#PBS -A ACF-UTHSC0010
#PBS -l nodes=1:ppn=20,walltime=140:00:00
#PBS -m e 
#PBS -M hchen3@uthsc.edu
#PBS -l partition=general,qos=long,feature=skylake
	

cd /lustre/haven/proj/UTHSC0013/supernova_results

for i in *_supernova_pseudohap.fasta.gz ;do
    out=`basename $i .fasta.gz`.paf
    if [ ! -f $out ] ; then 
        echo "generating $out"
        minimap2 ../mRatNor1/mRatNor1_1.curated_primary.20200520.fa $i >$out
    fi
done



