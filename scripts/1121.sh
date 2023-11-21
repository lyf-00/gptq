CUDA_VISIBLE_DEVICES=0 python opt.py facebook/opt-125m c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-125m-w4-g128/qsd.pt >> Experiments/opt-125m-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w4-g128/qsd.pt     --output-dir Experiments/opt-125m-w4-g128/ 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-125m-w4-g128/


CUDA_VISIBLE_DEVICES=1 python opt.py facebook/opt-350m c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-350m-w4-g128/qsd.pt >> Experiments/opt-350m-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w4-g128/qsd.pt     --output-dir Experiments/opt-350m-w4-g128/ 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-350m-w4-g128/


CUDA_VISIBLE_DEVICES=2 python opt.py facebook/opt-1.3b c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-1.3b-w4-g128/qsd.pt >> Experiments/opt-1.3b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_LM.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w4-g128/qsd.pt     --output-dir Experiments/opt-1.3b-w4-g128/ 
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-1.3b-w4-g128/


CUDA_VISIBLE_DEVICES=3 python opt.py facebook/opt-2.7b c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-2.7b-w4-g128/qsd.pt >> Experiments/opt-2.7b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w4-g128/qsd.pt     --output-dir Experiments/opt-2.7b-w4-g128/ 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-2.7b-w4-g128/


CUDA_VISIBLE_DEVICES=4 python opt.py facebook/opt-6.7b c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-6.7b-w4-g128/qsd.pt >> Experiments/opt-6.7b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_LM.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w4-g128/qsd.pt     --output-dir Experiments/opt-6.7b-w4-g128/ 
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-6.7b-w4-g128/


CUDA_VISIBLE_DEVICES=5 python opt.py facebook/opt-13b c4     --wbits 4     --groupsize 128    --act-order     --save Experiments/opt-13b-w4-g128/qsd.pt >> Experiments/opt-13b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_LM.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w4-g128/qsd.pt     --output-dir Experiments/opt-13b-w4-g128/ 
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-13b-w4-g128/


CUDA_VISIBLE_DEVICES=6 python opt.py facebook/opt-125m c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-125m-w3-g128/qsd.pt >> Experiments/opt-125m-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w3-g128/qsd.pt     --output-dir Experiments/opt-125m-w3-g128/ 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-125m-w3-g128/


CUDA_VISIBLE_DEVICES=7 python opt.py facebook/opt-350m c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-350m-w3-g128/qsd.pt >> Experiments/opt-350m-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=7 python eval-nlp/eval_LM.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w3-g128/qsd.pt     --output-dir Experiments/opt-350m-w3-g128/ 
CUDA_VISIBLE_DEVICES=7 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-350m-w3-g128/


CUDA_VISIBLE_DEVICES=8 python opt.py facebook/opt-1.3b c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-1.3b-w3-g128/qsd.pt >> Experiments/opt-1.3b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=8 python eval-nlp/eval_LM.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w3-g128/qsd.pt     --output-dir Experiments/opt-1.3b-w3-g128/ 
CUDA_VISIBLE_DEVICES=8 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-1.3b-w3-g128/


CUDA_VISIBLE_DEVICES=9 python opt.py facebook/opt-2.7b c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-2.7b-w3-g128/qsd.pt >> Experiments/opt-2.7b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=9 python eval-nlp/eval_LM.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w3-g128/qsd.pt     --output-dir Experiments/opt-2.7b-w3-g128/ 
CUDA_VISIBLE_DEVICES=9 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-2.7b-w3-g128/


CUDA_VISIBLE_DEVICES=10 python opt.py facebook/opt-6.7b c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-6.7b-w3-g128/qsd.pt >> Experiments/opt-6.7b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=10 python eval-nlp/eval_LM.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w3-g128/qsd.pt     --output-dir Experiments/opt-6.7b-w3-g128/ 
CUDA_VISIBLE_DEVICES=10 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-6.7b-w3-g128/


CUDA_VISIBLE_DEVICES=11 python opt.py facebook/opt-13b c4     --wbits 3     --groupsize 128    --act-order     --save Experiments/opt-13b-w3-g128/qsd.pt >> Experiments/opt-13b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=11 python eval-nlp/eval_LM.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w3-g128/qsd.pt     --output-dir Experiments/opt-13b-w3-g128/ 
CUDA_VISIBLE_DEVICES=11 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-13b-w3-g128/


CUDA_VISIBLE_DEVICES=12 python opt.py facebook/opt-125m c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-125m-w2-g128/qsd.pt >> Experiments/opt-125m-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=12 python eval-nlp/eval_LM.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w2-g128/qsd.pt     --output-dir Experiments/opt-125m-w2-g128/ 
CUDA_VISIBLE_DEVICES=12 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-125m     --load Experiments/opt-125m-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-125m-w2-g128/


CUDA_VISIBLE_DEVICES=13 python opt.py facebook/opt-350m c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-350m-w2-g128/qsd.pt >> Experiments/opt-350m-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=13 python eval-nlp/eval_LM.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w2-g128/qsd.pt     --output-dir Experiments/opt-350m-w2-g128/ 
CUDA_VISIBLE_DEVICES=13 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-350m     --load Experiments/opt-350m-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-350m-w2-g128/


CUDA_VISIBLE_DEVICES=14 python opt.py facebook/opt-1.3b c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-1.3b-w2-g128/qsd.pt >> Experiments/opt-1.3b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=14 python eval-nlp/eval_LM.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w2-g128/qsd.pt     --output-dir Experiments/opt-1.3b-w2-g128/ 
CUDA_VISIBLE_DEVICES=14 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-1.3b     --load Experiments/opt-1.3b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-1.3b-w2-g128/


CUDA_VISIBLE_DEVICES=15 python opt.py facebook/opt-2.7b c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-2.7b-w2-g128/qsd.pt >> Experiments/opt-2.7b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=15 python eval-nlp/eval_LM.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w2-g128/qsd.pt     --output-dir Experiments/opt-2.7b-w2-g128/ 
CUDA_VISIBLE_DEVICES=15 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-2.7b     --load Experiments/opt-2.7b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-2.7b-w2-g128/


CUDA_VISIBLE_DEVICES=0 python opt.py facebook/opt-6.7b c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-6.7b-w2-g128/qsd.pt >> Experiments/opt-6.7b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w2-g128/qsd.pt     --output-dir Experiments/opt-6.7b-w2-g128/ 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-6.7b     --load Experiments/opt-6.7b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-6.7b-w2-g128/


CUDA_VISIBLE_DEVICES=1 python opt.py facebook/opt-13b c4     --wbits 2     --groupsize 128    --act-order     --save Experiments/opt-13b-w2-g128/qsd.pt >> Experiments/opt-13b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w2-g128/qsd.pt     --output-dir Experiments/opt-13b-w2-g128/ 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name facebook/opt-13b     --load Experiments/opt-13b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/opt-13b-w2-g128/


CUDA_VISIBLE_DEVICES=0 python llama.py /home/v-liuyifei/llama2-hf/llama-2-7b c4     --wbits 4     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w4-g128/qsd.pt >> Experiments/llama-2-7b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w4-g128 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-7b-w4-g128
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --save_dir Experiments/llama-2-7b-w4-g128/MMLU_OI     --eval_batch_size 4


CUDA_VISIBLE_DEVICES=1 python llama.py /home/v-liuyifei/llama2-hf/llama-2-13b c4     --wbits 4     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w4-g128/qsd.pt >> Experiments/llama-2-13b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w4-g128 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-13b-w4-g128
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --save_dir Experiments/llama-2-13b-w4-g128/MMLU_OI     --eval_batch_size 1


CUDA_VISIBLE_DEVICES=2 python llama.py /home/v-liuyifei/llama2-hf/llama-2-7b c4     --wbits 3     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w3-g128/qsd.pt >> Experiments/llama-2-7b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w3-g128 
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-7b-w3-g128
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --save_dir Experiments/llama-2-7b-w3-g128/MMLU_OI     --eval_batch_size 4


CUDA_VISIBLE_DEVICES=3 python llama.py /home/v-liuyifei/llama2-hf/llama-2-13b c4     --wbits 3     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w3-g128/qsd.pt >> Experiments/llama-2-13b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w3-g128 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-13b-w3-g128
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --save_dir Experiments/llama-2-13b-w3-g128/MMLU_OI     --eval_batch_size 1


CUDA_VISIBLE_DEVICES=4 python llama.py /home/v-liuyifei/llama2-hf/llama-2-7b c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w2-g128/qsd.pt >> Experiments/llama-2-7b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w2-g128 
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-7b-w2-g128
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --save_dir Experiments/llama-2-7b-w2-g128/MMLU_OI     --eval_batch_size 4


CUDA_VISIBLE_DEVICES=5 python llama.py /home/v-liuyifei/llama2-hf/llama-2-13b c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w2-g128/qsd.pt >> Experiments/llama-2-13b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w2-g128 
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --batch-size 16     --output-dir Experiments/llama-2-13b-w2-g128
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_MMLU_oi.py     --model_name_or_path /home/v-liuyifei/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --save_dir Experiments/llama-2-13b-w2-g128/MMLU_OI     --eval_batch_size 1


