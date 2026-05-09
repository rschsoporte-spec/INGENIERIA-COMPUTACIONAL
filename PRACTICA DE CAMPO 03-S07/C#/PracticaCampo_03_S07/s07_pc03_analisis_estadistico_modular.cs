string res_leer_nota="";
bool res_es_aprobado;
int aprob01=0;int aprob02=0;int aprob03=0;int aprobados=0;
double suma_notas=0;
double res_calcular_promedio=0.0;
double res_numero_mayor=0;
double res_numero_menor=0;

Console.WriteLine("1-Ingrese una nota entre 0 y 20 :");
double numero_validar=double.Parse(Console.ReadLine());
res_leer_nota=LeerNota(numero_validar);
Console.WriteLine(res_leer_nota);

Console.WriteLine("-------------------------------------");
Console.WriteLine("2-Ingrese nota a evaluar Aprobación :");
double numero_es_aprobado=double.Parse(Console.ReadLine());
res_es_aprobado=EsAprobado(numero_es_aprobado);
//if(res_es_aprobado==true){Console.WriteLine("Verdadero");}else{Console.WriteLine("Falso");}
Console.WriteLine(res_es_aprobado);

Console.WriteLine("-------------------------------------");
Console.WriteLine("3-Ingrese nota a Clasificar :");
double numero_clasificar=double.Parse(Console.ReadLine());
var (_,res_clasificar,res_clasifica_aprobados) = ClasificarNota(numero_clasificar);
aprob01=res_clasifica_aprobados;
Console.WriteLine(res_clasificar);

//---------------------------------------------------------------------------------
//SUMO LOS TRES VALORES INGRESADOS ARRIBA PARA PASAR AL MAIN 
Console.WriteLine("-------------------------------------");
suma_notas=numero_validar+numero_es_aprobado+numero_clasificar;
res_calcular_promedio=CalcularPromedio(suma_notas,3);
Console.WriteLine($"4-El promedio de numeros es : {res_calcular_promedio}");	

//CALCULO EL NUMERO MAYOAR Y MENOS DE LOS 3 NUMEROS INGRESADOS
res_numero_mayor=numero_mayor(numero_validar,numero_es_aprobado,numero_clasificar);
res_numero_menor=numero_menor(numero_validar,numero_es_aprobado,numero_clasificar);

//CLASIFICO LAS OTRAS DOS NOTAS INGRESADAS y sumo cuantos aprobados
var (_,res_clasificar2,res_clasifica_aprobados2) = ClasificarNota(numero_validar);
aprob02=res_clasifica_aprobados2;
var (_,res_clasificar3,res_clasifica_aprobados3) = ClasificarNota(numero_es_aprobado);
aprob03=res_clasifica_aprobados3;
aprobados=aprob01+aprob02+aprob03;

//RESULTADOS EL MAIN - MostrarEstadisticas(double _prom,double  _mayor,double  _menor,double  _aprobados,double  _total)
MostrarEstadisticas(res_calcular_promedio,res_numero_mayor,res_numero_menor,aprobados,3);


//FUNCIONES VARIAS----------------------------------------------------------------

string LeerNota(double _numero_validar){
    while (_numero_validar < 0 || _numero_validar > 20) {
        Console.WriteLine("1-Ingrese una nota entre 0 y 20 :");
        _numero_validar = double.Parse(Console.ReadLine());
    }
    return "Nota validada.";
}


bool EsAprobado(double _numero_es_aprobado){
    if (_numero_es_aprobado>=11 && _numero_es_aprobado<=20){
        return true;
    }else{
        return false;
    }
}

(double,string,int) ClasificarNota(double _numero_clasificar){
    int res_clasifica_aprobados = 0 ;
    string res_clasificar="";
    if (_numero_clasificar>=19 && _numero_clasificar<=20){
        res_clasificar="Excelente";   
        res_clasifica_aprobados=0;
    }else if (_numero_clasificar>=15 && _numero_clasificar<=18){
        res_clasificar="Bueno"; 
        res_clasifica_aprobados=0;
    }else if (_numero_clasificar>=11 && _numero_clasificar<=14){
        res_clasificar="Aprobado"; 
        res_clasifica_aprobados=1;
    }else if (_numero_clasificar>=0 && _numero_clasificar<=10){
        res_clasificar="Desaprobado";
        res_clasifica_aprobados=0; 
    }
    return (_numero_clasificar,res_clasificar,res_clasifica_aprobados);
}

double CalcularPromedio(double _numero_acumulado,int _cantidad){
    double res_promedio=0.0;
    while (_cantidad<=0){
        Console.WriteLine("Escriba la cantidad correcta para divir, mayor a 0.");
    }
    res_promedio = _numero_acumulado / _cantidad;
    return res_promedio;
}

double numero_mayor(double _uno, double _dos, double _tres){
    double res_numero_mayor=0;
    if(_uno >_dos){
		res_numero_mayor = _uno;
    }else{
		res_numero_mayor = _dos;
    }
	if(_tres>res_numero_mayor){
		res_numero_mayor=_tres;
    }
    return res_numero_mayor;
}
double numero_menor(double _uno, double _dos, double _tres){
    double res_numero_menor=0;
    if(_uno <_dos){
		res_numero_menor = _uno;
    }else{
		res_numero_menor = _dos;
    }
	if(_tres<res_numero_menor){
		res_numero_menor=_tres;
    }
    return res_numero_menor;
}

void MostrarEstadisticas(double _prom,double _mayor,double _menor,double _aprobados,double _total){
    Console.WriteLine("========== RESUMEN ESTADÍSTICO ==========");
    Console.WriteLine($"Total de notas procesadas: {_total}");
    Console.WriteLine($"Nota más alta registrada: {_mayor}");
    Console.WriteLine($"Nota más baja registrada: {_menor}");
    Console.WriteLine($"Cantidad de aprobados: {_aprobados}");
    Console.WriteLine($"Promedio general del grupo: {_prom}");
    Console.WriteLine("=========================================");
}