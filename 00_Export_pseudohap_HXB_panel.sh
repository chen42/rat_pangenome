#PBS -S /bin/bash
#PBS -A ACF-UTHSC0010
#PBS -l nodes=1:ppn=40,walltime=140:00:00
#PBS -m e 
#PBS -M hchen3@uthsc.edu
#PBS -l partition=general,qos=long,feature=skylake
	

export PATH=/lustre/haven/proj/UTHSC0007/tools/supernova-2.0.1:$PATH

cd /lustre/haven/proj/UTHSC0013/supernova_results/

for i in F344_DuCrl F344_NCrl F344_NHsd dss_denovo_multi fhh_denovo_multi bn_denovo_multi ACI_N BN-Lx_Cub SHR_OlaIpcv BXH10 BXH11 BXH12 BXH13 BXH2 BXH3 BXH5 BXH6 BXH8 BXH9 HXB1 HXB10 HXB13 HXB15 HXB17 HXB18 HXB2 HXB20 HXB21 HXB22 HXB23 HXB24 HXB25 HXB27 HXB29 HXB3 HXB31 HXB4 HXB5 HXB7;  do
    if [ ! -f /lustre/haven/proj/UTHSC0013/supernova_results/${i}_supernova_pseudohap.fasta.gz ] ; then 
        supernova mkoutput --style=pseudohap --asmdir=/lustre/haven/proj/UTHSC0013/supernova_results/$i/outs/assembly/ --outprefix=/lustre/haven/proj/UTHSC0013/supernova_results/${i}_supernova_pseudohap --minsize=1000 --headers=full 
    fi 

done

