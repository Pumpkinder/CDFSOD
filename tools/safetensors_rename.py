import torch
import sys

import safetensors.torch

args = sys.argv[1:]
print(args)

input_path = args[0] 
output_path = args[1]

def rename_parameters_and_save(input_path, output_path):
    try:
        tensors = safetensors.torch.load_file(input_path)
        new_tensors = {}
        
        for name, param in tensors.items():
            if "query" in name:
                new_name = name.replace("query", "query.base_layer")
                new_tensors[new_name] = param
            elif "key" in name:
                new_name = name.replace("key", "key.base_layer")
                new_tensors[new_name] = param
            elif "value" in name:
                new_name = name.replace("value", "value.base_layer")
                new_tensors[new_name] = param
            else:
                new_tensors[name] = param
        
        safetensors.torch.save_file(new_tensors, output_path)
        print(f"参数已成功重命名并保存到 {output_path}")
    except FileNotFoundError:
        print(f"错误：未找到文件 {input_path}")
    except Exception as e:
        print(f"发生未知错误: {e}")

rename_parameters_and_save(input_path, output_path)    