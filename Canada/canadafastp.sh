#!/bin/bash

mkdir canadafastp_reads  

for SAMPLE in $(cat canada.txt) ; do

fastp \
    -i "$PWD/${SAMPLE}_1.fastq.gz" \
    -I "$PWD/${SAMPLE}_2.fastq.gz" \
    -o "canadafastp_reads/${SAMPLE}_1.fastq.gz" \
    -O "canadafastp_reads/${SAMPLE}_2.fastq.gz" \
    --html "canadafastp_reads/${SAMPLE}_fastp.html" 
done
