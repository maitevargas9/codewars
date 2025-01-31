'''
Description

You are playing a simple slot machine that only contains exclamation marks and question marks. 
Every time the slot machine is started, a string of 5 length is obtained. If you're lucky enough 
to get a Special permutation, you'll win the bonus. Give you a string s, return the highest bonus.

Bouns list:
Five-of-a-Kind:   ---- 1000
"!!!!!" or "?????"
Four-of-a-Kind:    ---- 800
The string contains a "!!!!" or "????"
"!!!!?","?!!!!","????!","!????"
Full House:         ----500
such as "!!!??" or "???!!"...
Three-of-a-Kind:    ---- 300
The string contains a "!!!" or "???"
such as "!!!?!","!???!"...
Two pair:           ---- 200
The string contains two "!!" or "??"
such as "??!!?","!!?!!"
A Pair:             ---- 100
The string contains a "!!" or "??"
such as "?!??!","!!?!?"
Others              ---- 0
such as "?!?!?","!?!?!"

Examples
slot("!!!!!") === 1000
slot("!!!!?") === 800
slot("!!!??") === 500
slot("!!!?!") === 300
slot("!!?!!") === 200
slot("!!?!?") === 100
slot("!?!?!") === 0
'''

def slot(st):
    if st == "!!!!!" or st == "?????":
        return 1000
    elif "!!!!" in st or "????" in st:
        return 800
    elif st == "!!!??" or st == "???!!" or st == "??!!!" or st == "!!???":
        return 500
    elif "!!!" in st or "???" in st:
        return 300
    elif st == "!!?!!" or st == "??!??" or st == "!!??!" or st == "??!!?" or st == "!??!!" or st == "?!!??":
        return 200
    elif "??" in st or "!!" in st:
        return 100
    else:
        return 0