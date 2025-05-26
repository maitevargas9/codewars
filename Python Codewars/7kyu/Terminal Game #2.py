'''
Description

Create the hero move method

Create a move method for your hero to move through the level.

Adjust the hero's position by changing the position attribute. The level is a grid with the following values:
00	01	02	03	04
10	11	12	13	14
20	21	22	23	24
30	31	32	33	34
40	41	42	43	44

The dir argument will be a string
up
down
left
right

If the position is not inside the level grid the method should throw an error and not move the hero
'''

from preloaded import Hero

def move(self, direction):
    row = int(self.position[0])
    col = int(self.position[1])
    
    if direction == "up":
        row -= 1
    elif direction == "down":
        row += 1
    elif direction == "left":
        col -= 1
    elif direction == "right":
        col += 1
    else:
        raise ValueError("Invalid direction")

    if 0 <= row <= 4 and 0 <= col <= 4:
        self.position = f"{row}{col}"
    else:
        raise ValueError("Movement out of bounds")
        
Hero.move = move