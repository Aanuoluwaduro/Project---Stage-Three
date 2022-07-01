#!/bin/bash

mkdir nigeriafastp_reads  

for SAMPLE in $(cat nigeria.txt) ; do

fastp \
    -i "$PWD/${SAMPLE}_1.fastq.gz" \
    -I "$PWD/${SAMPLE}_2.fastq.gz" \
    -o "nigeriafastp_reads/${SAMPLE}_1.fastq.gz" \
    -O "nigeriafastp_reads/${SAMPLE}_2.fastq.gz" \
    --html "nigeriafastp_reads/${SAMPLE}_fastp.html" 
done
