#!/bin/bash

mkdir chinafastp_reads  

for SAMPLE in $(cat china.txt) ; do

fastp \
    -i "$PWD/${SAMPLE}_1.fastq.gz" \
    -I "$PWD/${SAMPLE}_2.fastq.gz" \
    -o "chinafastp_reads/${SAMPLE}_1.fastq.gz" \
    -O "chinafastp_reads/${SAMPLE}_2.fastq.gz" \
    --html "chinafastp_reads/${SAMPLE}_fastp.html" 
done
