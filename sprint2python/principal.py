from factorial import func_factorial
from factorial2 import func_factorial2
import time

print('\n\n¡¡¡ NÚMERO FACTORIAL !!!')
print('\nFormas para hallar el fastorial de un numero...')
print('1. Sin recursividad... ')
print('2. Con recursividad... ')

opcion = input('\nTeclea una opción: ')

while(opcion != '1') & (opcion != '2'):
    opcion = input('\nTeclea una opción válida (1 o 2): ')

numero = float(input('\nTeclea el número al que se calculará su factorial: '))

if(numero < 0):
    print('\nERROR!!! No se puede hallar el factorial de un número negativo. ')
else:
    if(opcion == '1'):
        star_time = time.time()
        print('\nEl factorial de ' + str(numero) +' sin recursividad es: ' + str(func_factorial2(numero)))
        end_time = time.time()
        elapsed_time=end_time-star_time
        print('\nEl tiempo de ejecución de la forma sin recursividad es: ' + str(elapsed_time) + ' s')
    else:
        star_time = time.time()
        print('\nEl factorial de ' + str(numero) +' con recursividad es: ' + str(func_factorial(numero)))
        end_time = time.time()
        elapsed_time=end_time-star_time
        print('\nEl tiempo de ejecución de la forma con recursividad es: ' + str(elapsed_time) + ' s')