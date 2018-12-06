function [t,w]=FunEuler(fun,a,b,yt0,n)%la funcion Euler necesita lo sig:
%fun: funcion a evaluar
%rango de intervalos: a(valor inicial), b(valor final)
%yt0= valor inicial de a evaluar cuando t=0
%n=num. de intervalos
h=(b-a)/n; %esto es para saber a que paso se hacen los intervalos
t(1)=a;   %esto es para que se aplique la condicion inicial en t 
y(1)=yt0; %esto es para que se aplique la condicion iniclal en y

for i=1:n %funcion de euler(algoritmo)
    t(i+1)=a+h*i; %los valores de t a paso h para cada "y" evaluada  
    y(i+1)=y(i)+h*feval(fun,t(i),y(i)); %los valores de "y" en cada iteracion: y(i+1)=yi + h*f(t(i),y(i))
end

y %para que imprima los valores de y de cada iteracion
