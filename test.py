import time
# a very optimized factorial function
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# start timer in microseconds
start = time.time()
# calculate factorial of 1000
factorial(100)
# end timer in microseconds
end = time.time()
# print the time difference
print(end - start)

