import sys
import time

import autopy as at
import ipdb
from pynput import keyboard
from pynput.keyboard import Key, Listener
#at.key.tap('9')
#at.key.tap('1')
#at.key.tap('3')
#at.key.tap('7')
#at.key.tap('2')
#at.key.tap('4')
#at.key.tap('6')
#at.key.tap('8')
if sys.argv[-1] == "root_password":
    at.key.type_string('91372468',0)



#key_control = keyboard.Controller()

#status = 'release'
#def on_press(key):
#    #global status
#    #status = 'press'
#    print("pressing:",status)
#
#def on_release(key):
#    print(key,"is released")
#
#
##def main():
##    time.sleep(1)
##    #with keyboard.Events() as events:
##    #    for event in events:
##    #        print('loop start')
##    #        if event.key == keyboard.Key.esc:
##    #            break
##    #        else:
##    #            print('Received event {}'.format(event))
##
##    print('start')
##    global  status
##    status = 'press'
##    while status == 'press':
##        status = 'release'
##        print('start a loop',status)
##        listener = Listener(on_press=on_press, on_release=on_release)
##        listener.start()
##        listener.join() # may change status from release to press
##        listener.stop()
##        print('finished a loop,status:',status)
##    print('fininshed')
#def main():
#    with keyboard.Listener(
#        on_press=on_press,on_release=on_release) as listener:
#        #try:
#        listener.join()
#        #except MyException as e:
#            #print('{0} was pressed'.format(e.args[0]))
#
#
#if __name__ == "__main__":
#    main()
