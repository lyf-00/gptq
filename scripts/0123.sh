CUDA_VISIBLE_DEVICES=0 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b c4     --wbits 4     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w4-g128/qsd.pt >> Experiments/llama-2-7b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w4-g128 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-7b-w4-g128


CUDA_VISIBLE_DEVICES=1 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b c4     --wbits 4     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w4-g128/qsd.pt >> Experiments/llama-2-13b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w4-g128 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-13b-w4-g128


CUDA_VISIBLE_DEVICES=2 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b c4     --wbits 3     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w3-g128/qsd.pt >> Experiments/llama-2-7b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w3-g128 
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-7b-w3-g128


CUDA_VISIBLE_DEVICES=3 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b c4     --wbits 3     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w3-g128/qsd.pt >> Experiments/llama-2-13b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w3-g128 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-13b-w3-g128


CUDA_VISIBLE_DEVICES=4 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-7b-w2-g128/qsd.pt >> Experiments/llama-2-7b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w2-g128 
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-7b-w2-g128


CUDA_VISIBLE_DEVICES=5 python llama.py /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/llama-2-13b-w2-g128/qsd.pt >> Experiments/llama-2-13b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w2-g128 
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/llama-2-13b-w2-g128


# LM evaluation
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w4-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w4-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w3-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w3-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b     --load Experiments/llama-2-7b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-7b-w2-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w2-g128 

