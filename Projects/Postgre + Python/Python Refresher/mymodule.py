def divide(dividend, divisor):
    return dividend / divisor


print("mymodule.py:", __name__)

import libs.mylib #FOLDER DONT EXIST!!

print("mymodule.py:", __name__)

# relative imports

from libs import mylib

print("mymodule.py:", __name__)

from .libs import mylib

import libs.operations.operator