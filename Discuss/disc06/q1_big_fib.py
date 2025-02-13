def gen_fib():
    n, add = 0, 1
    while True:
        yield n
        n, add = n + add, n

print(next(filter(lambda n: n > 2024, gen_fib())))
