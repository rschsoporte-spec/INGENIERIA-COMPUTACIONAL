#FUNCIONES VARIAS-------------------------------------------------
def es_par(_numero_revisar):
    revisar_par= _numero_revisar % 2
    if(revisar_par == 0):
        return True
    else:
        return False

def factorial(_numero_revisar):
    aumento=1
    respuesta_facturaial=1
    while(aumento<=_numero_revisar):
        respuesta_facturaial=respuesta_facturaial*aumento
        aumento=aumento+1
    
    return respuesta_facturaial

def maximo_de3(_uno,_dos,_tres):
    if(_uno > _dos):
        ultimo_mayor=_uno
    else:
        ultimo_mayor=_dos
    
    if(_tres > ultimo_mayor):
        ultimo_mayor=_tres

    return ultimo_mayor

def convertir_temperatura(_numero_celsius):
    resultado_fahrenheit = (_numero_celsius * 9/5)+32
    return resultado_fahrenheit

def area_rectangulo(_base,_altura):
    resultado_area_rectangulo=_base * _altura
    return resultado_area_rectangulo

print("----------------------------------------------------------")
print("----------------BIBLIOTECA MATEMATICA BASICA--------------")
print("----------------------------------------------------------")

numero_revisar=int(input("Ingrese numero a revisar :"))

print("----------------------------------------------------------")
print("HALLAR SI ES PAR O IMPAR")
respuesta_par = es_par(numero_revisar)
if(respuesta_par==True):
    print("1-El numero es par.")
elif(respuesta_par==False):
    print("1-El numero es impar.")

print("----------------------------------------------------------")
print("HALLAR EL FACTORIAL DE UN NUMERO")
respuesta_factorial_final=factorial(numero_revisar)
print("2-Factorial calculado es :", respuesta_factorial_final)

print("----------------------------------------------------------")
print("HALLAR EL MAXIMO DE 3 NUMEROS")
numero_uno=int(input("Ingrese 1er numero :"))
numero_dos=int(input("Ingrese 2do numero :"))
numero_tres=int(input("Ingrese 3er numero :"))
respuesta_maximo=maximo_de3(numero_uno,numero_dos,numero_tres)
print("3-El numero maximo es :", respuesta_maximo)

print("----------------------------------------------------------")
print("CONVERTIR DE CELSIUS A FAHRENHEIT")
numero_fahrenheit=int(input("Ingrese los Celsius :"))
respuesta_temperatura=convertir_temperatura(numero_fahrenheit)
print("4-Los grados Celsius en Fahrenheit son :", respuesta_temperatura)

print("----------------------------------------------------------")
print("HALLAR BASE DEL RECTANGULO")
base_reactangulo=int(input("Ingrese base :"))
altura_reactangulo=int(input("Ingrese altura :"))
respuesta_area=area_rectangulo(base_reactangulo,altura_reactangulo)
print("5-Area del Rectangulo es :", respuesta_area)

