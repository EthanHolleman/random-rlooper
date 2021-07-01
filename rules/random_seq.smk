rule random_fasta_record_file:
    conda:
        '../envs/python.yml'
    output:
        'testing/rlooper_benchmarking/random_fasta/{rand_fasta}.{length}.fa'
    params:
        record_name=lambda wildcards: wildcards.rand_fasta,
        length=lambda wildcards: wildcards.length
    script:'../scripts/random_seq_gen.py'