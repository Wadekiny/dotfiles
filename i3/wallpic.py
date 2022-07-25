import os
import glob
import time

bg_dir = '/home/wadekiny/Pictures/background/'
time_cycle = 1000
bg_list = glob.glob(bg_dir + '*.jpg') + glob.glob(bg_dir + '*.png')

while True:
    bg_list = glob.glob(bg_dir + '*.jpg') + glob.glob(bg_dir + '*.png')
    for pic_name in bg_list:
        print(pic_name)
        os.system('feh --bg-fill '+ pic_name)
        time.sleep(time_cycle)



