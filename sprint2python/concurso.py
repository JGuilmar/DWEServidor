    
print("¡ACIERTA LA RESPUESAT CORRECTA!")
print("\n\nPregunta 1:")
print("¿Qué es Python? ")
print("a. Es un lenguaje de programación de bajo nivel.")
print("b. Es un lenguaje de preprocesado de hipertexto.")
print("c. Es un lenguaje de programación interpretado dinámicamente tipado.")

respuesta = input('\nTeclea la respuesta correcta: ').lower()

while(respuesta != 'a') & (respuesta != 'b') & (respuesta != 'c') :
    respuesta = input('Respuesta nó válida. Teclea "a" - "b" - "c": ')
    
if(respuesta == 'c'):
    print('En hora buena!!! Respuesta Correcta.')
else:
    print('Lo lamento!!! Respuesta Incorrecta')

 