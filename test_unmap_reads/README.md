RUN hisat2 mapping:

```bash
hisat2 --index ./Homo_sapiens.GRCh38.genome/genome_snp_rep -q -1 test1.fq -2 test2.fq --no-spliced-alignment | samtools view
```


OUTPUT:

```
4 reads; of these:
  4 (100.00%) were paired; of these:
    2 (50.00%) aligned concordantly 0 times
    2 (50.00%) aligned concordantly exactly 1 time
    0 (0.00%) aligned concordantly >1 times
    ----
    2 pairs aligned concordantly 0 times; of these:
      0 (0.00%) aligned discordantly 1 time
    ----
    2 pairs aligned 0 times concordantly or discordantly; of these:
      4 mates make up the pairs; of these:
        1 (25.00%) aligned 0 times
        3 (75.00%) aligned exactly 1 time
        0 (0.00%) aligned >1 times
87.50% overall alignment rate
demo1   113     5       138566629       60      56M     2       221962693       0       CACAGATGAGGAGAGTTCACACTTAGCCTTTTCAGCAGCTTCCCGTACCCTCTGAA        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE AS:i:0  XN:i:0  XM:i:0  XO:i:0  XG:i:0  NM:i:0  MD:Z:21T34      YT:Z:UP NH:i:1  Zs:Z:21|S|rs1042665
demo1   177     2       221962693       60      55M     5       138566629       0       TCTGTGCAGACTGACATCAATTTGCCCTATCTTACAATGGATTCTTCTGGACCCA EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  AS:i:0  ZS:i:-4 XN:i:0  XM:i:0  XO:i:0  XG:i:0  NM:i:0  MD:Z:55 YT:Z:UP NH:i:1
demo2   89      6       2833100 60      52M     =       2833100 0       ACAAGGGACAGAAAAGTCAGGCGAGGCAAGCTTGTCTTCGTAACCTGGGCTC    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE     AS:i:0  XN:i:0  XM:i:0  XO:i:0  XG:i:0  NM:i:0  MD:Z:52 YT:Z:UP NH:i:1
demo2   133     6       2833100 0       *       =       2833100 0       CTCTCAATTGGGGGCCACATGAACTATATATTATACATAAAGAAGAACAAAAAA  EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE   YT:Z:UP
demo3   83      10      58543891        60      20M1D36M        =       58543718        -230    AAATTTGCCTTAGGTAAACCTTATAAACAGGCATGATCTTTTAGAAACTACTCAAA        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE AS:i:-8 XN:i:0  XM:i:0  XO:i:1  XG:i:1  NM:i:1  MD:Z:20^T36     YS:i:0  YT:Z:CP NH:i:1
demo3   163     10      58543718        60      55M     =       58543891        230     GGCTAGTGTTGAACTTCTGGCCTCAAGCGATCCTCCTGTCTCGGCCTCTCAAAGC EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  AS:i:0  XN:i:0  XM:i:0  XO:i:0  XG:i:0  NM:i:0  MD:Z:55 YS:i:-8 YT:Z:CP NH:i:1
demo4   99      10      58543718        60      55M     =       58543891        230     GGCTAGTGTTGAACTTCTGGCCTCAAGCGATCCTCCTGTCTCGGCCTCTCAAAGC EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  AS:i:0  XN:i:0  XM:i:0  XO:i:0  XG:i:0  NM:i:0  MD:Z:55 YS:i:-8 YT:Z:CP NH:i:1
demo4   147     10      58543891        60      20M1D36M        =       58543718        -230    AAATTTGCCTTAGGTAAACCTTATAAACAGGCATGATCTTTTAGAAACTACTCAAA        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE AS:i:-8 XN:i:0  XM:i:0  XO:i:1  XG:i:1  NM:i:1  MD:Z:20^T36     YS:i:0  YT:Z:CP NH:i:1
```


---

RUN hisat2-3n mapping:

```bash
hisat-3n --index ./Homo_sapiens.GRCh38.genome/genome_3nindex -q -1 test1.fq -2 test2.fq --base-change C,T --no-spliced-alignment | samtools view
```


```
4 reads; of these:
  4 (100.00%) were paired; of these:
    2 (50.00%) aligned concordantly 0 times
    2 (50.00%) aligned concordantly exactly 1 time
    0 (0.00%) aligned concordantly >1 times
    ----
    2 pairs aligned concordantly 0 times; of these:
      0 (0.00%) aligned discordantly 1 time
    ----
    2 pairs aligned 0 times concordantly or discordantly; of these:
      4 mates make up the pairs; of these:
        3 (75.00%) aligned 0 times
        1 (25.00%) aligned exactly 1 time
        0 (0.00%) aligned >1 times
62.50% overall alignment rate
demo1   99      2       221962643       60      56M     =       221962693       50      TTCAGAGGGTACGGGAAGCTGCTGAAAAGGCTAAGTGTGAACTCTCCTCATCTGTG        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE AS:i:-10        NH:i:1  XM:i:2  NM:i:2  MD:Z:10G0T22A21 YS:i:0  YZ:A:-  Yf:i:1  Zf:i:16 XN:i:0  XO:i:0  XG:i:0
demo1   147     2       221962693       60      55M     =       221962643       -50     TCTGTGCAGACTGACATCAATTTGCCCTATCTTACAATGGATTCTTCTGGACCCA EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  AS:i:0  NH:i:1  XM:i:0  NM:i:0  MD:Z:55 YS:i:-10        YZ:A:+  Yf:i:0  Zf:i:15 XN:i:0  XO:i:0  XG:i:0
demo2   89      6       2833100 60      52M     =       2833100 0       ACAAGGGACAGAAAAGTCAGGCGAGGCAAGCTTGTCTTCGTAACCTGGGCTC    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE     AS:i:0  NH:i:1  XM:i:0  NM:i:0  MD:Z:52 YZ:A:-  Yf:i:0  Zf:i:16 XN:i:0  XO:i:0  XG:i:0
demo2   133     6       2833100 0       *       =       2833100 0       CTCTCAATTGGGGGCCACATGAACTATATATTATACATAAAGAAGAACAAAAAA  EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
demo3   83      10      58543891        60      20M1D36M        =       58543718        -173    AAATTTGCCTTAGGTAAACCTTATAAACAGGCATGATCTTTTAGAAACTACTCAAA        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE AS:i:-8 NH:i:1  XM:i:0  NM:i:1  MD:Z:20^T36     YS:i:0  YZ:A:-  Yf:i:0  Zf:i:7  XN:i:0  XO:i:1  XG:i:1
demo3   163     10      58543718        60      55M     =       58543891        173     GGCTAGTGTTGAACTTCTGGCCTCAAGCGATCCTCCTGTCTCGGCCTCTCAAAGC EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  AS:i:0  NH:i:1  XM:i:0  NM:i:0  MD:Z:55 YS:i:-8 YZ:A:-  Yf:i:0  Zf:i:13 XN:i:0  XO:i:0  XG:i:0
demo4   77      *       0       0       *       *       0       0       GGCTAGTGTTGAACTTCTGGCCTCAAGCGATCCTCCTGTCTCGGCCTCTCAAAGC EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE  YT:Z:UP
demo4   141     *       0       0       *       *       0       0       TTTGAGTAGTTTCTAAAAGATCATGCCTGTTTATAAGGTTTACCTAAGGCAAATTT        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE YT:Z:UP
```
