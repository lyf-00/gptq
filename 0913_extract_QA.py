import pandas as pd
import json
import os
import itertools


models = ['opt-125m','opt-350m','opt-1.3b','opt-2.7b','opt-6.7b','opt-13b']
wbits = [4,3,2]
dir_template = 'Experiments/{}-w{}-g128/'


# Create an empty dataframe to store the results
columns = ['model', 'w_bit', 'group_size', 'piqa', 'hellaswag', 'winogrande', 'arc_easy', 'arc_challenge']
df = pd.DataFrame(columns=columns)

# Directory containing the result files
# experiments_dir = 'Experiments'
for model,w_bit in itertools.product(models,wbits):
    dirpath = dir_template.format(model,w_bit)
    with open(os.path.join(dirpath, 'QA_results.json'), 'r') as json_file:
            data = json.load(json_file)

            # Extracting required information
            group_size = 128  # since it's constant in your scripts

            piqa_acc = data['results']['piqa']['acc']
            hellaswag_acc = data['results']['hellaswag']['acc']
            winogrande_acc = data['results']['winogrande']['acc']
            arc_easy_acc = data['results']['arc_easy']['acc']
            arc_challenge_acc = data['results']['arc_challenge']['acc']

            # Append the extracted information to the dataframe
            df_new = pd.DataFrame({
                'model': model,
                'w_bit': w_bit,
                'group_size': group_size,
                'piqa': piqa_acc,
                'hellaswag': hellaswag_acc,
                'winogrande': winogrande_acc,
                'arc_easy': arc_easy_acc,
                'arc_challenge': arc_challenge_acc},index=[0])
            df = pd.concat([df,df_new])

# Save the dataframe to a CSV file
# df = df.sort_values(by=[ "model", 'w_bit'])
df.to_csv('extracted_results.csv', index=False)
