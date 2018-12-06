function [t,w]=euler_mejorado(funcion,rangominimo,rangomaximo,yt0,n)

%Simbologia 
%x0 = Valor inicial 
%n = numero de intervalos

t(1)=a;
y(1)=yt0; 
%Calculo de pasos 
h=(b-a)/n;

%Aqui empieza el Algoritmo
for i=1:n
   t(i+1)=a+h*i; 
   funcionevaluada1=feval(funcion,t(i),y(i));
   %f(t(i+1),y(i+1); [y(i+1)=yi+ h* f(t(i),y(i))
   funcionevaluada2=feval(funcion,t(i+1),y(i)+h*funcionevaluada1);%valor de la funcion evaluada en 
   y(i+1)= y(i) + h*(k1+k2)/2; 
end
%imprimir valores de y
y 

