#!/bin/bash

#rename all the contigs.fasta files with their SRR IDs.


for x in */contigs.fasta; do
    d=$(dirname "$x")
    p=$(echo $d | cut -d_ -f1)
    mv "$d/contigs.fasta" "$d/$p.fasta"
    cp "$d/$p.fasta"  ./argentina_contigs
done
