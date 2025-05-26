'''
Description

Grasshopper if/else review

In the game you are creating, the role of the main function is to check the input and return a call to the 
appropriate function.

The preloaded function available are forward() and backward().

The possible inputs and the required actions are:
"forward": call the forward() function, and return its result
"backward": call the backward() function, and return its result
anything else: return "Not a valid input."
'''

def main(input_str):
    if input_str == "forward":
        return forward()
    elif input_str == "backward":
        return backward()
    else:
        return "Not a valid input."