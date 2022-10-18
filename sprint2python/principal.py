from factorial import func_factorial
from factorial2 import func_factorial2

print('\n¡¡¡ NÚMERO FACTORIAL !!!')
print('\nFormas para hallar el fastorial de un numero...')
print('1. Sin recursividad... ')
print('2. Con recursividad... ')

opcion = input('\nTeclea una opción: ')

while(opcion != '1') & (opcion != '2'):
    opcion = input('\nTeclea una opción válida (1 o 2): ')

numero = int(input('Teclea el número al que se calculará su factorial: '))

if(numero < 0):
    print('ERROR!!! No se puede hallar el factorial de un número negativo. ')
else:
    if(opcion == '1'):
        print('El factorial de ' + str(numero) +' sin recursividad es: ' + str(func_factorial2(numero)))
    else:
        print('El factorial de ' + str(numero) +' con recursividad es: ' + str(func_factorial(numero)))
