#list of 1000000 random values
import random
import time

def random_list(n):
    return [random.random() for i in range(n)]


list = random_list(1000000)

#time for accessing list[0]
start = time.time()
list[0]
end = time.time()

print(end - start)

#time for accessing list[999999]
start = time.time()
list[999999]
end = time.time()

print(end - start)
