import os
import glob
import re

source_dir = '/home/wadekiny/dotfiles/'
target_dir = '/home/wadekiny/.config/'

inp = input('source_dir: {}\ntarget_dir: {}\nconfirm dir info[y/n]:'.format(source_dir,target_dir))

if inp != 'y':
    print('exit')
    raise RuntimeError('canceled')
    
if not os.path.exists(source_dir):
    raise RuntimeError('source_dir not found')

if not os.path.exists(target_dir):
    raise RuntimeError('target_dir not found')


exclude_name_list = ['ln.py', '\.git', '.*un~', '.gitignore','config.backup'] # re正则匹配
source_path_list = glob.glob(os.path.join(source_dir,'*')) + glob.glob(os.path.join(source_dir,'.*'))

for source_file_path in source_path_list:
    name = source_file_path.split('/')[-1]
    target_file_path = os.path.join(target_dir,name)

    exclude_flag = False
    for pattern in exclude_name_list:
        if re.fullmatch(pattern, name):
            exclude_flag = True
            break
    if exclude_flag:
        print("[exclude file:]", name)
    elif os.path.exists(target_file_path):
        print("[exists target:]", name)
    else:
        cmd = "ln -s {} {}".format(source_file_path, target_file_path)
        os.system(cmd)
        print("[run command:]", cmd)

   

