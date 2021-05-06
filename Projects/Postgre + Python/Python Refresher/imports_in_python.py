from mymodule import divide

print(divide(10, 2))

# Names

import mymodule

print("code.py: ", __name__)

import sys

print(sys.path)

import mymodule

print("code.py: ", __name__)

import sys

print(sys.modules)