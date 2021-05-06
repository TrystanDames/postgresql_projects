def add(x, y=3):
    print(x + y)


add(5)
add(5, 8)
add(y=3)

# -- Order of default parameters --

# def add(x=5, y):  # Not OK, default parameters must go after non-default
#     print(x + y)

# -- Usually don't use variables as default value --

default_y = 3


def add(x, y=default_y):
    sum = x + y
    print(sum)

add(2) 

default_y = 4
print(default_y)

add(2)