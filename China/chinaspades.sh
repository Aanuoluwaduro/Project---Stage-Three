#!/bin/bash


for sample in $(cat china.txt) ; do
    spades.py -1 "$PWD/$sample"_1.fastq.gz -2 "$PWD/$sample"_2.fastq.gz -o /home/einstein/project1/Aanuoluwa/China/chinafastp_reads/china_assembly/$sample
 done
