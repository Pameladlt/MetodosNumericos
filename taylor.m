syms x 
resultado=0;

func=input('Ingresa tu funcion: ');
n=input('Ingresa el grado de la funcion :');
x0=input('Ingresa punto de inicio para la funcion: ');

for i=1:n
derivada=diff(func,i);
resultado=(derivada)*(x-x0)^i/factorial(i) + resultado;
end 
disp('Taylor serial: ');
disp(resultado)
