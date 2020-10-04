
for i in *_supernova_pseudohap.fasta.gz ;do
    out=`basename $i .fasta.gz`_edyeet.paf
    if [ ! -f $out ] ; then 
        echo "generating $out"
        edyeet -m -M -t 12 ../mRatNor1/mRatNor1_1.curated_primary.20200520.fa $i >$out
    fi
done



