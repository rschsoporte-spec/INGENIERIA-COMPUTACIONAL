peso=float(input("Ingrese su peso en KG:"))
altura=float(input("Ingrese su en altura CM:"))
if peso<0 or peso>400 or altura<0 or altura>3:
    print("El peso no deber ser <0 o >400 y tambien la altura no deber ser <0 o >3.")
else:
    resultado_imc=round(peso/(altura ** 2), 2)
    if resultado_imc<18.5:
        print("Resultado de IMC: ",resultado_imc,"(Bajo Peso)")
    elif resultado_imc>=18.5 and resultado_imc<25:
        print("Resultado de IMC: ",resultado_imc,"(Peso Normal)")
    elif resultado_imc>=25 and resultado_imc<30:
        print("Resultado de IMC: ",resultado_imc,"(Sobrepeso)")
    elif resultado_imc>=30:
        print("Resultado de IMC: ",resultado_imc,"(Obesidad)")