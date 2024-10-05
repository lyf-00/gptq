CUDA_VISIBLE_DEVICES=3 python llama.py mistralai/Mistral-7B-v0.1 c4     --wbits 4     --groupsize 128     --true-sequential     --act-order     --save Experiments/mistral-7b-w4-g128/qsd.pt >> Experiments/mistral-7b-w4-g128/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w4-g128/qsd.pt     --output-dir Experiments/mistral-7b-w4-g128 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w4-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/mistral-7b-w4-g128



CUDA_VISIBLE_DEVICES=4 python llama.py mistralai/Mistral-7B-v0.1 c4     --wbits 3     --groupsize 128     --true-sequential     --act-order     --save Experiments/mistral-7b-w3-g128/qsd.pt >> Experiments/mistral-7b-w3-g128/log.txt
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w3-g128/qsd.pt     --output-dir Experiments/mistral-7b-w3-g128 
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w3-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/mistral-7b-w3-g128

CUDA_VISIBLE_DEVICES=5 python llama.py mistralai/Mistral-7B-v0.1 c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/mistral-7b-w2-g128/qsd.pt >> Experiments/mistral-7b-w2-g128/log.txt
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w2-g128/qsd.pt     --output-dir Experiments/mistral-7b-w2-g128 
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w2-g128/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 16     --output-dir Experiments/mistral-7b-w2-g128


CUDA_VISIBLE_DEVICES=6 python llama.py mistralai/Mistral-7B-v0.1 c4     --wbits 2     --groupsize 128     --true-sequential     --act-order     --save Experiments/mistral-7b-test

# LM evaluation
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w4-g128/qsd.pt     --output-dir Experiments/mistral-7b-w4-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w4-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w4-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w3-g128/qsd.pt     --output-dir Experiments/mistral-7b-w3-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w3-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w3-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w2-g128/qsd.pt     --output-dir Experiments/mistral-7b-w2-g128 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name /home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b     --load Experiments/llama-2-13b-w2-g128/qsd.pt     --output-dir Experiments/llama-2-13b-w2-g128 

CUDA_VISIBLE_DEVICES=3 python /home/aiscuser/yifei/LUTobq/eval_LM_2k_4k.py   --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w4-g128/qsd.pt     --output-dir Experiments/mistral-7b-w4-g128 
CUDA_VISIBLE_DEVICES=3 python /home/aiscuser/yifei/LUTobq/eval_LM_2k_4k.py     --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w3-g128/qsd.pt     --output-dir Experiments/mistral-7b-w3-g128 
CUDA_VISIBLE_DEVICES=3 python /home/aiscuser/yifei/LUTobq/eval_LM_2k_4k.py   --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w2-g128/qsd.pt     --output-dir Experiments/mistral-7b-w2-g128 

EXP=/home/aiscuser/yangwang/blob/yifei/gptq/Experiments/mistral-7b-w4-g128
CUDA_VISIBLE_DEVICES=4,5 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=2,dtype=auto,gpu_memory_utilization=0.8     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size auto     --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json 
EXP=/home/aiscuser/yangwang/blob/yifei/gptq/Experiments/mistral-7b-w3-g128
CUDA_VISIBLE_DEVICES=4,5 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=2,dtype=auto,gpu_memory_utilization=0.8     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size auto     --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json 
EXP=/home/aiscuser/yangwang/blob/yifei/gptq/Experiments/mistral-7b-w2-g128
CUDA_VISIBLE_DEVICES=4,5 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=2,dtype=auto,gpu_memory_utilization=0.8     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size auto     --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json 

CUDA_VISIBLE_DEVICES=4,5,6,7 lm_eval --model vllm     \
    --model_args pretrained=mistralai/Mistral-7B-v0.1,tensor_parallel_size=4,dtype=float16,gpu_memory_utilization=0.7     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size 1    --num_fewshot 0     \
    --output_path mistral-7b-qa-0shot.json 
CUDA_VISIBLE_DEVICES=4 lm_eval --model vllm     \
    --model_args pretrained=mistralai/Mistral-7B-v0.1,tensor_parallel_size=1,dtype=float16,gpu_memory_utilization=0.7     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size 1    --num_fewshot 0     \
    --output_path mistral-7b-qa-0shot.json 


CUDA_VISIBLE_DEVICES=3 python /home/aiscuser/yifei/LUTobq/eval_LM_2k_4k.py   --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w4-g128/qsd.pt     --output-dir Experiments/mistral-7b-w4-g128 
CUDA_VISIBLE_DEVICES=3 python /home/aiscuser/yifei/LUTobq/eval_LM_2k_4k.py   --model-name mistralai/Mistral-7B-v0.1     --load Experiments/mistral-7b-w3-g128/qsd.pt     --output-dir Experiments/mistral-7b-w3-g128 

EXP=Experiments/mistral-7b-w2-g128/
CUDA_VISIBLE_DEVICES=3 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=1,dtype=float16,gpu_memory_utilization=0.7     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size 1    --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json

EXP=Experiments/mistral-7b-w3-g128/
CUDA_VISIBLE_DEVICES=4 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=1,dtype=float16,gpu_memory_utilization=0.7     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size 1    --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json

EXP=Experiments/mistral-7b-w4-g128/
CUDA_VISIBLE_DEVICES=5 lm_eval --model vllm     \
    --model_args pretrained=$EXP,tensor_parallel_size=1,dtype=float16,gpu_memory_utilization=0.7     \
    --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge     --batch_size 1    --num_fewshot 0     \
    --output_path $EXP/qa-0shot.json

