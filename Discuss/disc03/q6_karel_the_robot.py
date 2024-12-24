# write any code you want
from karel.stanfordkarel import *

def main():
   # your code here...
   if front_is_clear():
      move()
      if front_is_clear():
         move()
         main()
         move()
      else:
         turn_left()
         turn_left()
   else:
      turn_left()
      turn_left()
