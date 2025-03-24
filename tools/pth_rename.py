import torch
import sys

args = sys.argv[1:]
print(args)

input_path = args[0]
output_path = args[1]

def rename_parameters_and_save(input_path, output_path):
    try:
        state_dict = torch.load(input_path)
        new_state_dict = {}

        for name, param in state_dict['model'].items():
            if "qkv" in name:
                new_name = name.replace("qkv", "qkv.base_layer")
                new_state_dict[new_name] = param
            else:
                new_state_dict[name] = param
        
        final_dict = {"model": new_state_dict}

        torch.save(final_dict, output_path)
        print(f"参数已成功重命名并保存到 {output_path}")
    except FileNotFoundError:
        print(f"错误：未找到文件 {input_path}")
    except Exception as e:
        print(f"发生未知错误: {e}")

rename_parameters_and_save(input_path, output_path)    