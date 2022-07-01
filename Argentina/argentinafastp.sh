#!/bin/bash

mkdir argentinafastp_reads  

for SAMPLE in $(cat argentina.txt) ; do

fastp \
    -i "$PWD/${SAMPLE}_1.fastq.gz" \
    -I "$PWD/${SAMPLE}_2.fastq.gz" \
    -o "argentinafastp_reads/${SAMPLE}_1.fastq.gz" \
    -O "argentinafastp_reads/${SAMPLE}_2.fastq.gz" \
    --html "argentinafastp_reads/${SAMPLE}_fastp.html" 
done
