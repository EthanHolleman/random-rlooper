RLOOPER_FILE_SUFFI = [
    'avgG.wig',
    'bpprob.wig',
    'bpprob.bed',
    'mfe.bed',
    'mfe.wig'
]

SPOT_RNA_EXTS = [
    'bpseq',
    'ct',
    'prob'
]

RAND_SEQ_NAMES = [f'RAND_{i}' for i in range(0, 500)]
RAND_SEQ_LENS = [
    50, 75, 100, 150, 200, 300, 500, 600, 800, 1000, 1500, 2000, 2500, 3000, 
    3500, 4000, 4500
    ]

RAND_SEQ_NAMES = [f'RAND_{i}' for i in range(0, 500)]
RAND_SEQ_LENS = [50, 75, 100, 150, 200, 300, 500, 600, 700, 800, 900, 1000]



include: 'rules/run_rlooper.smk'
include: 'rules/plotting.smk'
include: 'rules/random_seq.smk'

rule all:
    input:
        'testing/rlooper_benchmarking/plots/rand_seq_LAE_dist.png'