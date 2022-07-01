#!/bin/bash


for sample in $(cat argentina.txt) ; do
    spades.py -1 "$PWD/$sample"_1.fastq.gz -2 "$PWD/$sample"_2.fastq.gz -o /home/einstein/project1/Aanuoluwa/Argentina/argentinafastp_reads/argentina_assembly/$sample
 done

