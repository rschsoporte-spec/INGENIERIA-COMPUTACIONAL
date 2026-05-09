#VARIABLES DECLARADAS----------------------------------------------------------------
res_leer_nota=""
res_es_aprobado=""
aprob01=0
aprob02=0
aprob03=0
aprobados=0
suma_notas=0
res_calcular_promedio=0.0
res_numero_mayor=0
res_numero_menor=0

#FUNCIONES VARIAS--------------------------------------------------------------------
def LeerNota(_numero_validar):
    while _numero_validar < 0 or _numero_validar > 20:
        _numero_validar = float(input("1-Ingrese una nota entre 0 y 20 :"))
    return "Nota validada."
    
def EsAprobado(_numero_es_aprobado):
    if (_numero_es_aprobado>=11 and  _numero_es_aprobado<=20):
        return True
    else:
        return False

def ClasificarNota(_numero_clasificar):
    res_clasifica_aprobados = 0
    res_clasificar=""
    if _numero_clasificar>=19 and _numero_clasificar<=20:
        res_clasificar="Excelente"
        res_clasifica_aprobados=0
    elif _numero_clasificar>=15 and _numero_clasificar<=18:
        res_clasificar="Bueno"
        res_clasifica_aprobados=0
    elif _numero_clasificar>=11 and _numero_clasificar<=14:
        res_clasificar="Aprobado"
        res_clasifica_aprobados=1
    elif _numero_clasificar>=0 and _numero_clasificar<=10:
        res_clasificar="Desaprobado"
        res_clasifica_aprobados=0
    return (_numero_clasificar,res_clasificar,res_clasifica_aprobados)

def CalcularPromedio(_numero_acumulado,_cantidad):
    res_promedio=0.0
    while _cantidad<=0:
        _cantidad = float(input("Escriba la cantidad correcta para divir, mayor a 0."))
    
    res_promedio = _numero_acumulado / _cantidad
    return res_promedio

def numero_mayor(_uno,_dos,_tres):
    res_numero_mayor=0
    if _uno >_dos:
        res_numero_mayor = _uno
    else:
        res_numero_mayor = _dos
    
    if _tres>res_numero_mayor:
        res_numero_mayor=_tres

    return res_numero_mayor

def numero_menor(_uno,_dos,_tres):
    res_numero_menor=0
    if _uno <_dos:
        res_numero_menor = _uno
    else:
        res_numero_menor = _dos
    
    if _tres<res_numero_menor:
        res_numero_menor=_tres

    return res_numero_menor

def MostrarEstadisticas(_prom,_mayor,_menor,_aprobados,_total):
    print("========== RESUMEN ESTADÍSTICO ==========");
    print("Total de notas procesadas: ", _total)
    print("Nota más alta registrada: ", _mayor)
    print("Nota más baja registrada: ", _menor)
    print("Cantidad de aprobados: ", _aprobados)
    print("Promedio general del grupo: ", _prom)
    print("========================================")

#PETICIONES, CALCULOS Y RETORNOS CON FUNCIONES--------------------------------------
numero_validar=float(input("1-Ingrese una nota entre 0 y 20 :"))
res_leer_nota=LeerNota(numero_validar)
print(res_leer_nota)

print("-------------------------------------")
numero_es_aprobado=float(input("2-Ingrese nota a evaluar Aprobación :"))
res_es_aprobado=EsAprobado(numero_es_aprobado)
print(res_es_aprobado)

print("-------------------------------------")
numero_clasificar=float(input("3-Ingrese nota a Clasificar :"))
nota,res_clasificar,res_clasifica_aprobados = ClasificarNota(numero_clasificar)
aprob01=res_clasifica_aprobados
print(res_clasificar)

#---------------------------------------------------------------------------------
#SUMO LOS TRES VALORES INGRESADOS ARRIBA PARA PASAR AL MAIN 
print("-------------------------------------")
suma_notas=numero_validar+numero_es_aprobado+numero_clasificar
res_calcular_promedio=CalcularPromedio(suma_notas,3)
print("4-El promedio de numeros es : " , res_calcular_promedio);	

#CALCULO EL NUMERO MAYOAR Y MENOS DE LOS 3 NUMEROS INGRESADOS
res_numero_mayor=numero_mayor(numero_validar,numero_es_aprobado,numero_clasificar)
res_numero_menor=numero_menor(numero_validar,numero_es_aprobado,numero_clasificar)

#CLASIFICO LAS OTRAS DOS NOTAS INGRESADAS y sumo cuantos aprobados
nota,res_clasificar2,res_clasifica_aprobados2 = ClasificarNota(numero_validar)
aprob02=res_clasifica_aprobados2
nota,res_clasificar3,res_clasifica_aprobados3 = ClasificarNota(numero_es_aprobado)
aprob03=res_clasifica_aprobados3
aprobados=aprob01+aprob02+aprob03

##RESULTADOS EL MAIN - MostrarEstadisticas(double _prom,double  _mayor,double  _menor,double  _aprobados,double  _total)
MostrarEstadisticas(res_calcular_promedio,res_numero_mayor,res_numero_menor,aprobados,3)