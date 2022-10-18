#Función para obtener la puntuación de las preguntas 
def puntuacion(rpt_correcta, puntaje_acumulado):
    rpt_usuario = input('\nTeclea la respuesta correcta: ').lower()
    while(rpt_usuario != 'a') & (rpt_usuario != 'b') & (rpt_usuario != 'c'):
       rpt_usuario = input('Respuesta nó válida. Teclea "a" - "b" - "c": ')
    if(rpt_usuario == rpt_correcta):
        print('Respuesta correcta!!!')
        puntaje_acumulado += 10
        print('+10 puntos')
    else:
        print('Respuesta Incorrecta!!!')
        puntaje_acumulado -= 5
        print('-5 puntos')
    return puntaje_acumulado   
   

puntaje_inicial = 0

print("¡¡¡ RESPONDE LAS PREGUNTAS Y CONSIGUE LA MÁXIMA PUNTUACIÓN !!!")
print("RESPUESTA CORRECTA (+10) \nRESPUESTA INCORRECTA (-5)")

print("\n\nPregunta 1:")
print("¿Qué es Python? ")
print("a. Es un lenguaje de programación de bajo nivel.")
print("b. Es un lenguaje de preprocesado de hipertexto.")
print("c. Es un lenguaje de programación interpretado dinámicamente tipado.")

rptCorrecta1 = 'c'
puntaje_final = puntuacion (rptCorrecta1,puntaje_inicial)

print("\n\nPregunta 2:")
print("¿Qué es __init__?")
print("a. Es una variable para inicializar los atributos de un objeto.")
print("b. Es un método o constructor especial de una clase en Python.")
print("c. Es el último método que se ejecuta cuando se crea un objeto.")

rptCorrecta2 = 'b'
puntaje_final = puntuacion (rptCorrecta2,puntaje_final)

print("\n\nPregunta 3:")
print("¿Cómo se escriben los comentarios en Python?")
print("a. ##Los comentarios en Python empiezan así")
print("b. //Los comentarios en Python empiezan así")
print("c. #Los comentarios en Python empiezan así")

rptCorrecta3 = 'c'
puntaje_final = puntuacion (rptCorrecta3,puntaje_final)

print("\n\nPUNTUACIÓN OBTENIDA: " + str(puntaje_final) + ' puntos')

 