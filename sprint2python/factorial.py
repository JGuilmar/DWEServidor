def func_factorial(numero):
    if numero == 0 or numero == 1:
        return 1
    else:
        return numero * func_factorial(numero-1)