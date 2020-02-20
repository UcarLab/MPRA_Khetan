#!/bin/bash

intersectBed -a MPRA_Loci.bed -b Hg19_LINEs.bed -wa -c | intersectBed -a - -b Hg19_LTRs.bed -wa -c | intersectBed -a - -b Hg19_SINEs.bed -wa -c | intersectBed -a - -b Hg19_Satellites.bed -wa -c | intersectBed -a - -b Hg19_Simple_repeats.bed -wa -c | sort -k1,1 -k2,2n | uniq > MPRA_Loci_RepeatsAnnotated.bed
