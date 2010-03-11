#!/bin/bash

#gff_to_bed.py TAIR9_GFF3_genes.gff >athaliana.bed
#awk '{print $1"\t"$3"\t"$4"\t"$2}' grape.genes >grape.bed
#blast_to_raw.py ~/blast/results/athaliana_grape.blastp --qbed=athaliana.bed --sbed=grape.bed --tandem_Nmax=20 --cscore=.5
blast_to_raw.py ~/blast/results/athaliana_athaliana.blastp --qbed=athaliana.bed --sbed=athaliana.bed --tandem_Nmax=10 --cscore=.5
#../cluster_utils.py --format=raw ~/blast/results/athaliana_grape.raw athaliana_grape.qa
#../quota_align.py --merge --Dm=20 --min_size=5 --quota=4:1 athaliana_grape.qa
#python qa_plot.py --qbed=athaliana.nolocaldups.bed --sbed=grape.nolocaldups.bed athaliana_grape.qa.filtered
#qa_to_pairs.py --qbed=athaliana.nolocaldups.bed --sbed=grape.nolocaldups.bed athaliana_grape.qa.filtered
