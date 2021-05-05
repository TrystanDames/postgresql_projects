l = ["Bob", "Rolf", "Anne"]
t = ("Bob", "Rolf", "Anne")
s = {"Bob", "Rolf", "Anne"}


print(l[0])
print(t[0])
# print(s[0])  # Accessing element 0 of something without an order doesn't make sense. As this is the reason it gives us an error. 


l[0] = "Smith"

print(l)
print(t)


l.append("Jen")
print(l)

s.add("Jen")
print(s)


s.add("Bob")
print(s)