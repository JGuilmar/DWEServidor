print('¡¡¡ NÚMERO FACTORIAL SIN RECURSIVIDAD!!!')
def func_factorial2(numero):
    if(numero == 0 or numero ==1):
        return 1
    else:
        fact = 1
        while(numero > 1):
            fact *= numero
            numero -= 1
        return fact
    

numero = int(input('Teclea el número al que se calculará su factorial: '))
if(numero < 0):
    print('No se puede sacar el factorial de un numero negativo')
else:
    print('El factorial de ' + str(numero) + ' es: ' + str(func_factorial2(numero)))


