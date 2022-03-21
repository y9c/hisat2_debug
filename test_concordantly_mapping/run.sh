# Step1: Build index

hisat-3n-build --base-change C,T ./ref.fa ./ref

# Step2: Align

hisat-3n --index ./ref -q -1 test1.fq -2 test2.fq --base-change C,T --no-spliced-alignment --directional-mapping
