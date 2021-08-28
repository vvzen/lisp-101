def collatz(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return collatz(n / 2)
    else:
        return collatz(n * 3 + 1)

num = int(input("Type a number: "))
print("Collatz of %i is %i" % (num, collatz(num)))