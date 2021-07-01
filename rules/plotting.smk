rule plot_rlooper_rand_seq_distrabution:
    conda:
        '../envs/R.yml'
    input:
        ale=expand(
            'testing/rlooper_benchmarking/completed_runs/{rand_fasta}.{length}/{rand_fasta}.{length}_avgG.wig',
            rand_fasta=RAND_SEQ_NAMES, length=RAND_SEQ_LENS
        ),
        bpprob=expand(
            'testing/rlooper_benchmarking/completed_runs/{rand_fasta}.{length}/{rand_fasta}.{length}_bpprob.wig',
            rand_fasta=RAND_SEQ_NAMES, length=RAND_SEQ_LENS
        )
    output:
        plot='testing/rlooper_benchmarking/plots/rand_seq_LAE_dist.png',
        expect='testing/rlooper_benchmarking/plots/expectations.tsv'
    script:'../scripts/plot_rlooper_expect.R'