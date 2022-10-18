from factorial import func_factorial

print('¡¡¡ NÚMERO FACTORIAL CON RECURSIVIDAD !!!')
numero = int(input('Teclea el número al que se calculará su factorial: '))

if(numero < 0):
    print('No se puede sacar el factorial de un numero negativo')
else:
    print('El factorial de ' + str(numero) +' es: ' + str(func_factorial(numero)))