#!/bin/python3

import hashlib
from itertools import product

options = 'abcdefghijklmnop'
passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

for l in range(1, 5):
    to_attempt = product(options, repeat=l)
    for attempt in to_attempt:
        word =''.join(attempt)
        wordHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

        print(f"Trying password {word}:{wordHash}")

        if(wordHash == passwordHash):

            print(f"Password has been cracked! It was {word}")

            break