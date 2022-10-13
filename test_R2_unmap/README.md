- ref GRCm38
- hisat version (hisat-3n branch)
- input: test_R1.fq, test_R2.fq

- weird output:

```
A00639:1345:HG7JHDMXY:2:1102:16432:22498        137     13      98338294        60      158M    =       98338294        0       AAAACACTAAAATAATTAACACAAACTATACTCCTATAACTTAAAAAAAACACAAAAAACTAAAAACTTCATAAAAAAACAACAAAATAATATAAAACACATTTACCCAATCTAAATATACAACTTATATTTACATCCATTAAATTTTATATTATTTA  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF:FFFFFFFFFFFFFFFFFF::F:FFFFF:FFF:FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF:FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF    AS:i:-13        NH:i:1  XM:i:13 NM:i:13 MD:Z:0G2G0A0G0G0A0T0G0G1G0G1A0G2G1T0G0G2C3A0C1A1G1G0G6G0G1G0G5G0G1G3G0G0G10G0G0G6G1G4G2G0G0G17G0G3G2G3G14G1G4G1G6G0     YZ:A:-  Yf:i:40 Zf:i:0  XN:i:0  XO:i:0  XG:i:0
A00639:1345:HG7JHDMXY:2:1102:16432:22498        69      3       139236747       0       *       =       139236747       0       TTGGTTTGAAGAAAGTTAGTTATTGTTTGATTAGATTTTTTTAGTTGTGCGAAATGATAATATTAGAGATTGATATTAGTTAGATTTATAATGGTAAATTTTTAATTTTAAAATGTTTGTGTAAATAATATAAAATTTAATGGATGTAAATAT       FFFFFFFFFFFFFFFFFFF:FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF:FFFFFFFFFFFFFFFFFFFFFFFFFF,FFFFFFFF:FFFFFFFFFF,FFFFFFFFFFFFFFFF:FF,FFFFFFFFFFFFFFFFFFFFF:FF:FFF
```


### Score = `L,0,-0.1`

```bash
$ hisat-3n -x Mus_musculus.GRCm38.genome -p 1 --no-spliced-alignment --directional-mapping --bowtie2-dp 2 --score-min L,0,-0.1 -1 test_R1.fq -2 test_R2.fq --base-change C,T
31 reads; of these:
 31 (100.00%) were paired; of these:
   31 (100.00%) aligned concordantly 0 times
   0 (0.00%) aligned concordantly exactly 1 time
   0 (0.00%) aligned concordantly >1 times
   ----
   31 pairs aligned concordantly 0 times; of these:
     0 (0.00%) aligned discordantly 1 time
   ----
   31 pairs aligned 0 times concordantly or discordantly; of these:
     62 mates make up the pairs; of these:
       44 (70.97%) aligned 0 times
       15 (24.19%) aligned exactly 1 time
       3 (4.84%) aligned >1 times
29.03% overall alignment rate
```

### Score = `L,0,-0.3`

```bash
$ hisat-3n -x Mus_musculus.GRCm38.genome -p 1 --no-spliced-alignment --directional-mapping --bowtie2-dp 2 --score-min L,0,-0.3 -1 test_R1.fq -2 test_R2.fq --base-change C,T
31 reads; of these:
 31 (100.00%) were paired; of these:
   31 (100.00%) aligned concordantly 0 times
   0 (0.00%) aligned concordantly exactly 1 time
   0 (0.00%) aligned concordantly >1 times
   ----
   31 pairs aligned concordantly 0 times; of these:
     0 (0.00%) aligned discordantly 1 time
   ----
   31 pairs aligned 0 times concordantly or discordantly; of these:
     62 mates make up the pairs; of these:
       39 (62.90%) aligned 0 times
       20 (32.26%) aligned exactly 1 time
       3 (4.84%) aligned >1 times
37.10% overall alignment rate
```

### Score = `L,0,-0.6`

```bash
$ hisat-3n -x Mus_musculus.GRCm38.genome -p 1 --no-spliced-alignment --directional-mapping --bowtie2-dp 2 --score-min L,0,-0.6 -1 test_R1.fq -2 test_R2.fq --base-change C,T
31 reads; of these:
 31 (100.00%) were paired; of these:
   31 (100.00%) aligned concordantly 0 times
   0 (0.00%) aligned concordantly exactly 1 time
   0 (0.00%) aligned concordantly >1 times
   ----
   31 pairs aligned concordantly 0 times; of these:
     0 (0.00%) aligned discordantly 1 time
   ----
   31 pairs aligned 0 times concordantly or discordantly; of these:
     62 mates make up the pairs; of these:
       43 (69.35%) aligned 0 times
       17 (27.42%) aligned exactly 1 time
       2 (3.23%) aligned >1 times
30.65% overall alignment rate
```

### Score = `L,0,-1.0`

```bash
$ hisat-3n -x Mus_musculus.GRCm38.genome -p 1 --no-spliced-alignment --directional-mapping --bowtie2-dp 2 --score-min L,0,-1.0 -1 test_R1.fq -2 test_R2.fq --base-change C,T
31 reads; of these:
 31 (100.00%) were paired; of these:
   26 (83.87%) aligned concordantly 0 times
   4 (12.90%) aligned concordantly exactly 1 time
   1 (3.23%) aligned concordantly >1 times
   ----
   26 pairs aligned concordantly 0 times; of these:
     0 (0.00%) aligned discordantly 1 time
   ----
   26 pairs aligned 0 times concordantly or discordantly; of these:
     52 mates make up the pairs; of these:
       52 (100.00%) aligned 0 times
       0 (0.00%) aligned exactly 1 time
       0 (0.00%) aligned >1 times
16.13% overall alignment rate
```

### Score = `L,0,-2.0`

```bash
$ hisat-3n -x Mus_musculus.GRCm38.genome -p 1 --no-spliced-alignment --directional-mapping --bowtie2-dp 2 --score-min L,0,-2.0 -1 test_R1.fq -2 test_R2.fq --base-change C,T
31 reads; of these:
 31 (100.00%) were paired; of these:
   26 (83.87%) aligned concordantly 0 times
   4 (12.90%) aligned concordantly exactly 1 time
   1 (3.23%) aligned concordantly >1 times
   ----
   26 pairs aligned concordantly 0 times; of these:
     0 (0.00%) aligned discordantly 1 time
   ----
   26 pairs aligned 0 times concordantly or discordantly; of these:
     52 mates make up the pairs; of these:
       52 (100.00%) aligned 0 times
       0 (0.00%) aligned exactly 1 time
       0 (0.00%) aligned >1 times
16.13% overall alignment rate
```
