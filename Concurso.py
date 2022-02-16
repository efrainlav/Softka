####################################################################################################
# Archivo: 	Concurso.py                                                                            #
# Simulacion en consolda del juego Quien quiere ser Millonario                                     #
# Autor: 	Efrain Laverde                                                                         #
# Fech1- 	Febrero 2022                                                                           #
####################################################################################################

from random import randint
from time import sleep



def roster_preguntas():
    pregunta1=["Cual es la abreviatura de kilometro","1- kl","2- klm","3- km","4- kmt",3,"G1"]
    pregunta2=["Quien salio de la lampara de Aladino","1- Un genio","2- Un principe","3- Una bruja","4- Un sapo",1,"G1"]
    pregunta3=["La antena de radio sirve para","1- Adornar el radio","2- Mejorar la senial","3- Regular la corriente","4- Eliminar el ruido",2,"G1"]
    pregunta4=["De que color es una señal de Pare","1- verde y azul","2- rojo y blanco","3- amarillo y negro","4- rosa y verde",2,"G1"]
    pregunta5=["Las gotas heladas que caen en algunas tormentas se les llama","1- Granizo","2- Nieve","3- Lluvia","4- Rocio",1,"G1"]
    pregunta6=["Cual es el simbolo quimico del aluminio","1- Ao","2- Am","3- Lm","4- Al",4,"G2"]
    pregunta7=["Para que el pan se fermente o crezca debe llevar","1- Levadura","2- Agua","3- Uvas","4- Amor",1,"G2"]
    pregunta8=["Este perro es el mas alto de todos ellos. Tiene un pelaje delgado.","1- Lobero Irlandes","2- Gran danes","3- Deerhound Escoces","4- San Bernardo",1,"G2"]
    pregunta9=["Cual es el aparato que facilita la refrigeracion en una nevera","1- Congelador","2- Barillas metalicas","3- Tener la puerta cerrada","4- Compresor",4,"G2"]
    pregunta10=["Cual es el oceano en el que llega el caudal del rio amazonas","1- El Artico","2- El indio","3- El Atlantico","4- El Pacifico",3,"G2"]
    pregunta11=["Cuantos segundos tiene un minuto y medio","1- 45","2- 90","3- 60","4- 75",2,"G3"]
    pregunta12=["¿Quienes inventaron la polvora?","1- Los Egipcios","2- Los Chinos","3- Los Griegos", "4- Los Romanos",2,"G3"]
    pregunta13=["El amaretto es un licor a base de", "1- Anís", "2- Café","3- Almendra", "4- Manzana",3,"G3"]
    pregunta14=["¿Cual es el rio más largo del mundo?","1- El Yangtze","2- El Nilo","3- El Orinoco","4- El Amazonas",2,"G3"]
    pregunta15=["¿En qué parte del mundo se dio la batalla de Ticonderoga?","1- Norteamerica","2- Sur de India","3- Filipinas","4- Europa",1,"G3"]
    pregunta16=["¿Cuál fue la sede de la Copa Mundial Femenina de Fútbol 2011?","1- China","2- Francia","3- Alemania","4- Estados Unidos",3,"G4"]
    pregunta17=["¿Cuál era el nombre completo de Grace Kelly?","1- Grace Patrice Kelly","2-Grace Sue Kelly","3- Grace Maria Kelly","4- Ann Grace Kelly",1,"G4"]
    pregunta18=["¿Qué biblioteca conserva la colección de libros de sexo más importante del mundo?","1- Municipal de Estocolmo","2- Vaticana","3- Kinsey Institute","4- Museo Británico",2,"G4"]
    pregunta19=["Finn y Jake, son los protagonistas de:","1- Más allá del Jardín","2- Hora de Aventura","3- Jake y los piratas","4- Un Show más",2,"G4"]
    pregunta20=["¿Qué estrella de Hollywood patentó, en la Segunda Guerra Mundial, un sistema para que no se detectaran los torpedos?","1- Joan Blondell","2- Bette Davis","3- Hedy Lamarr","4- Lauren Bacall",3,"G4"]
    pregunta21=["El ganador del Oscar a mejor actor del año 2013 fue","1- Bradley Cooper","2- Leonardo DiCaprio","3- Denzel Washington","4- Daniel Day-Lewis",4,"G5"]
    pregunta22=["¿De qué murió el compositor Chopin?","1- De tuberculosis","2- De un ataque al corazón","3- De insuficiencia renal aguda","4- De un cáncer estomacal ",1,"G5"]
    pregunta23=["En la tabla periódica de los elementos, ¿hay cuatro elementos diferentes cuyos nombres se basan en…?","1- En una aldea minera sueca","2- En el nombre de soltera de Marie Curie","3- En la luna de Neptuno","4- En el gato mascota de Antoine Lavoisier",1,"G5"]
    pregunta24=["¿Cuál de estas canciones debutó primero?","1- I Want What's She's Got de eyeQ","2- Beautiful Day de U2","3- En la luna de Neptuno","4- Erase/Rewind de The Cardigans",1,"G5"]
    pregunta25=["¿En la corte de qué rey pasó Leonardo Da Vinci los dos últimos años de su vida?","1- Enrique IV","2- Carlos III","3- Luis XII","4- Francisco I",4,"G5"]
    lista=[pregunta1,pregunta2,pregunta3,pregunta4,pregunta5,pregunta6,pregunta7,pregunta8,pregunta9,pregunta10,pregunta11,pregunta12,pregunta13,pregunta14,pregunta15,pregunta16,pregunta17,pregunta18,pregunta19,pregunta20,pregunta21,pregunta22,pregunta23,pregunta24,pregunta25]
    return lista   

def roster_premio():
    lista=[0, 100,1000,10000,100000,1000000]
    return lista

def filtrado(grupo):
    lvl = grupo
    Output = [b for b in preguntas if all(a in b for a in lvl)]
    return Output

def preguntar(grupo):
    preNivel= filtrado(grupo)
    n = randint(0,4)
    for i in preNivel[n]:
        print(i)
    
    user_input = input("Seleccione una respuesta....")
    if user_input.isnumeric() ==True
    



    return answer, preNivel[n]
    
def resultado(answer,pregunta):
    if answer == pregunta[5]
    punto=True
    else
    punto=False
    return punto











preguntas=roster_preguntas()
premios=roster_premio()

#Variables de Inicio
lvl="G1"
balance= premios[0]

#Filtrado preguntas Nivel 1
Pregunta= filtrado(lvl)


#LOOP PRINCIPAL

while salir != True:
    print("Bienvenido a quien queire ser millonario, estas listo para participar?")
    opcion=input("Presiona 1 para Continuar, presiona 2 para ver el historico de jugarores y 3 para salir")
    if opcion == 1:
        answer, pregunta= preguntar(lvl)


        
    elif opcion == 2:
        historial();

    elif opcion == 3:
        salir = True;
        "Que tengas un feliz dia"    
    else:
        print("Digite una opcion valida")










print("OUR FIRST CANDIDATE TONIGHT IS ....")
sleep(1.5)
print("...ehm...")
print(" ")
sleep(1.5)
name = input("sorry, I forgot your name. What is your name? (enter your name) ")
print("Of course that is your name!")
print(" ")
sleep(1.5)


