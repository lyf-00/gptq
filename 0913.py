import os
import itertools
import pathlib

# template = '''python opt.py facebook/{} c4 \
#     --wbits {} \
#     --tasks piqa,hellaswag,winogrande,arc_easy,arc_challenge \
#     --output-dir {} \
#     --batch-size 16'''
# models = ['opt-125m','opt-350m','opt-1.3b','opt-2.7b','opt-6.7b','opt-13b']
# wbits = [4,3,2]
# dir_template = 'Experiments/{}-w{}-g128/'

# for w_bit, model in itertools.product(wbits,models):
#     dir = dir_template.format(model,w_bit)
#     pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
#     print(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
#     os.system(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
# 不小心把OPT的log.txt覆盖了，LM结果丢失    

template = '''python llama.py {} c4 \
    --wbits {} \
    --tasks mmlu \
    --output-dir {} \
    --groupsize 128\
    --batch-size 16\
    --num-fewshot 5\
    --true-sequential'''

models = ['/scratch/yifei/llama2-hf/llama-2-7b','/scratch/yifei/llama2-hf/llama-2-13b']
wbits = [4,3,2]
dir_template = 'Experiments/{}-w{}-g128'

for w_bit, model in itertools.product(wbits,models):
    dir = dir_template.format(model.split('/')[-1],w_bit)
    pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
    print(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
    os.system(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
    