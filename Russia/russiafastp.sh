#!/bin/bash

mkdir russiafastp_reads  

for SAMPLE in $(cat russia.txt) ; do

fastp \
    -i "$PWD/${SAMPLE}_1.fastq.gz" \
    -I "$PWD/${SAMPLE}_2.fastq.gz" \
    -o "russiafastp_reads/${SAMPLE}_1.fastq.gz" \
    -O "russiafastp_reads/${SAMPLE}_2.fastq.gz" \
    --html "russiafastp_reads/${SAMPLE}_fastp.html" 
done
