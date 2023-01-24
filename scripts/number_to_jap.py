#! /usr/bin/python3

"""
Python module for converting Arabic numerals to Japanese numerals.

Written by:     Ezra Hulsman
Date & time:    西暦22年1月22日, 午後二時四十七分
"""

import sys

arabic_japanese = '０１２３４５６７８９'
nums = ['〇','一','二','三','四','五','六','七','八','九']
powers = ['十','百','千','万','億', '兆', '	京']
# Powers go: 
# - 10      (十 - jū    / じゅう)
# - 100     (百	- hyaku / ひゃく)
# - 1,000   (千	- sen   / せん)
# - 10,000  (万	man     / まん)
# - 100,000,000 (億	oku / おく)             }
# - 1,000,000,000,000 (兆	chō / ちょう)   } - Not supporting these yet
# - 10,000,000,000,000,000 (京	kei / けい) }

def num_to_jap(n: str, arabic: bool=False):
    res = []
    n = str(n)
    if arabic:
        for c in n:
            res.append(arabic_japanese[int(c)])
        return ''.join(res)
    for i, c in enumerate(reversed(n)):
        if i > 0:
            if c == '0': continue
            num = int(c)
            pre = nums[num] if num != 1 else ''
            res.insert(0, f"{pre}{powers[i-1]}")
        else:
            if c == '0' and len(n) > 1: continue
            res.insert(0, f"{nums[int(c)]}")
    return ''.join(res)

def main():
    if len(sys.argv) < 2:
        print("Missing argument for number")
        exit(1)
    
    try:
        int(sys.argv[1])
        int(sys.argv[1][0])
    except:
        print("Argument negative or not a number")
        exit(1)
    
    print(num_to_jap(sys.argv[1]))
    return

if __name__ == '__main__':
    main()