# python opt.py facebook/opt-350m c4 --wbits 2  --groupsize 128 > Experiments/opt-350m-w2-g128.log
# python opt.py facebook/opt-1.3b c4 --wbits 2  --groupsize 128 > Experiments/opt-1.3b-w2-g128.log
# python opt.py facebook/opt-6.7b c4 --wbits 2  --groupsize 128 > Experiments/opt-6.7b-w2-g128.log
# python opt.py facebook/opt-13b c4 --wbits 2  --groupsize 128 > Experiments/opt-13b-w2-g128.log
# python opt.py facebook/opt-30b c4 --wbits 2  --groupsize 128 > Experiments/opt-30b-w2-g128.log

# python llama.py /scratch/yifei/llama-hf/7B  c4 --wbits 2 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-7b-w2-g128.log
# python llama.py /scratch/yifei/llama-hf/13B  c4 --wbits 2 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-13b-w2-g128.log
# python llama.py /scratch/yifei/llama-hf/30B  c4 --wbits 2 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-30b-w2-g128.log

# python opt.py facebook/opt-350m c4 --wbits 1  --groupsize 128 > Experiments/opt-350m-w1-g128.log
# python opt.py facebook/opt-1.3b c4 --wbits 1  --groupsize 128 > Experiments/opt-1.3b-w1-g128.log
# python opt.py facebook/opt-6.7b c4 --wbits 1  --groupsize 128 > Experiments/opt-6.7b-w1-g128.log
# python opt.py facebook/opt-13b c4 --wbits 1  --groupsize 128 > Experiments/opt-13b-w1-g128.log
# python opt.py facebook/opt-30b c4 --wbits 1  --groupsize 128 > Experiments/opt-30b-w1-g128.log

# python llama.py /scratch/yifei/llama-hf/7B  c4 --wbits 1 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-7b-w1-g128.log
# python llama.py /scratch/yifei/llama-hf/13B  c4 --wbits 1 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-13b-w1-g128.log
# python llama.py /scratch/yifei/llama-hf/30B  c4 --wbits 1 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-30b-w1-g128.log

python llama.py /scratch/yifei/llama-hf/7B  c4 --wbits 4 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-7b-w4-g128.log
python llama.py /scratch/yifei/llama-hf/13B  c4 --wbits 4 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-13b-w4-g128.log
python llama.py /scratch/yifei/llama-hf/30B  c4 --wbits 4 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-30b-w4-g128.log
python llama.py /scratch/yifei/llama-hf/7B  c4 --wbits 3 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-7b-w3-g128.log
python llama.py /scratch/yifei/llama-hf/13B  c4 --wbits 3 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-13b-w3-g128.log
python llama.py /scratch/yifei/llama-hf/30B  c4 --wbits 3 --true-sequential --act-order --new-eval --groupsize 128 > Experiments/llama-30b-w3-g128.log