import os
import itertools
import pathlib
NGPUS = 16

def eval_all(model, outputdir, sdpath, dev, lm=True, qa=True, oi=True):
    if '7b' in model.lower():
        bs = 4
    elif '13b' in model.lower():
        bs = 1
    else:
        bs = None
    lm_cmd = f'''python eval-nlp/eval_LM.py \
    --model-name {model} \
    --load {sdpath} \
    --output-dir {outputdir} '''

    qa_cmd = f'''python eval-nlp/eval_lm_eval.py \
    --model-name {model} \
    --load {sdpath} \
    --batch-size 16 \
    --output-dir {outputdir}'''
    
    oi_cmd = f'''python eval-nlp/eval_lm_eval.py \
    --model-name {model} \
    --load {sdpath} \
    --tasks mmlu \
    --num-fewshot 5 \
    --batch-size 16 \
    --output-dir {outputdir}'''

    # oi_cmd = f'''python eval-nlp/eval_MMLU_oi.py \
    # --model_name_or_path {model} \
    # --load {sdpath} \
    # --save_dir {os.path.join(outputdir,'MMLU_OI')} \
    # --eval_batch_size {bs}'''
    if lm:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + lm_cmd)
    if qa:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + qa_cmd)
    if oi:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + oi_cmd)

all_cmds = {i:[] for i in range(NGPUS)}

# template = '''python opt.py facebook/{} c4 \
#     --wbits {} \
#     --groupsize 128\
#     --act-order \
#     --save {}'''
# models = ['opt-125m','opt-350m','opt-1.3b','opt-2.7b','opt-6.7b','opt-13b']
# wbits = [4,3,2]
# dir_template = 'Experiments/{}-w{}-g128/'

# dev = 0
# for w_bit, model in itertools.product(wbits,models):
#     dir = dir_template.format(model,w_bit)
#     save_path = os.path.join(dir,'qsd.pt')
#     pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
#     print(f'CUDA_VISIBLE_DEVICES={dev} ' + template.format(model,w_bit,save_path)+' >> ' + os.path.join(dir,'log.txt'))
#     eval_all('facebook/'+model, dir, save_path, dev, oi=False)
#     # os.system(template.format(model,w_bit,save_path)+' >> ' + os.path.join(dir,'log.txt'))
#     dev = (dev + 1) % NGPUS
#     print('\n')

template = '''python llama.py {} c4 \
    --wbits {} \
    --groupsize 128 \
    --true-sequential \
    --act-order \
    --save {}'''

models = ['/home/v-liuyifei/llm-awq/llama2-hf/llama-2-7b','/home/v-liuyifei/llm-awq/llama2-hf/llama-2-13b']
wbits = [4,3,2]
dir_template = 'Experiments/{}-w{}-g128'

dev = 0
for w_bit, model in itertools.product(wbits,models):
    dir = dir_template.format(model.split('/')[-1],w_bit)
    save_path = os.path.join(dir,'qsd.pt')
    pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
    print(f'CUDA_VISIBLE_DEVICES={dev} ' + template.format(model,w_bit,save_path)+' >> ' + os.path.join(dir,'log.txt'))
    eval_all(model, dir, save_path, dev, qa=False)
    # os.system(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
    dev = (dev + 1) % NGPUS
    print('\n')
    