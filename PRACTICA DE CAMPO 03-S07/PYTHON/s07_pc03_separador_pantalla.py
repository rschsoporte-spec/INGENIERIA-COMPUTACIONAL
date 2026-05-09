texto_caracter = input("Ingrese caracter :")
numero_veces = int(input("Ingrese numero para repetir :"))

def mostrar_separador(_texto_caracter,_numero_veces):
    texto_separador = ""
    texto_separador_02 = ""
    aumento = 0
    while aumento < _numero_veces:
        texto_separador = texto_separador + _texto_caracter
        aumento += 1

    for a in range(_numero_veces):
        texto_separador_02 = texto_separador_02 + _texto_caracter

    return texto_separador, texto_separador_02

separador1, separador2 = mostrar_separador(texto_caracter, numero_veces)
print(separador1)
print(separador2)

