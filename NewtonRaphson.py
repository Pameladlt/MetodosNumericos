#Metodo Newton Raphson
import sys

def nr(func, deriavtive, x, sval):   #funcion 
    f_value = func(x)                       
    print("Valor de x antes de iteracion",x) 
    counter=0;   #contador para iteaciones
    
    final_value=int(input("Cuantas veces deseas iterar")) 
    
    while(abs(f_value)>sval and counter<final_value):
        try:
            x=x-float(f_value)/deriavtive(x)
        except ZeroDivisionError:            #tratando las divisiones 0 
            print("Division entre 0 ocurrio:")
            sys.exit() # nos salimos
        print("valor despues de la iteracion ".format(counter+1),x)   
        f_value = func(x)
        counter += 1 #despues de la iteracion le sumamos al contador
        print("Valor de la funcion",f_value)
        if (f_value<sval):       
            break;
    return f_value,counter,x

def func(x):
    return x**2+1;
def deriavtive(x):
    return 2*x;
    
#configuracion del metodo
[f_value,counter,x] = nr(func, deriavtive, x=30, sval=1.0e-6)
print("************************************************************")
print("Valor final de la funcion luego de iteraciones",f_value)
print("Valor final de la x :",x)