'''
Description

Terminal game bug squashing

You are creating a text-based terminal version of your favorite board game. In the board game, each turn has six 
steps that must happen in this order: roll the dice, move, combat, get coins, buy health, and print status.

You are using a library that already has the functions below. Create a function named main (PlayTurn for C#) that 
calls the functions in the proper order stated before.

- `combat`
- `buy_health`
- `get_coins`
- `print_status`
- `roll_dice`
- `move`

Note: this list only mentions the methods' names, not the order in which they should be called. For the order, 
refer to the first paragraph.

from preloaded import *

health = 100
position = 0
coins = 0

def (main):
  getCoins()
  move()
  print_status()
  combat()
  rolDice()
  attack()
'''

from preloaded import *

health = 100
position = 0
coins = 0

def main():
    roll_dice()
    move()
    combat()
    get_coins()
    buy_health()
    print_status()