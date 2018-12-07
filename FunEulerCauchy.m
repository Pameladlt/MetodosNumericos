function FunEulerCauchy(a,b,yt0,n)%la funcion Euler mejorado necesita lo sig:
%rango de intervalos: a(valor inicial), b(valor final)
%yt0= valor inicial de a evaluar cuando t=0
%n=num. de intervalos
x=zeros();
y=zeros();
h=(b-a)/n; %esto es para saber a que paso se hacen los intervalos
x(1)=a; %esto es para que se aplique la condicion inicial en t 
y(1)=yt0; %esto es para que se aplique la condicion iniclal en y
%siguiendo el algoritmo presentado en clase:
for i=1:n %algoritmo de euler mejorado 
   x(i+1)=a+h*i; %los valores de t a paso h para cada "y" evaluada 
   k1=feval(fun,x(i),y(i)); %valor de la funcion evaluada en i: f(t(i),y(i))
   k2=feval(fun,x(i+1),y(i)+h*k1);%valor de la funcion evaluada en i+1: f(t(i+1),y(i+1); [y(i+1)=yi+ h* f(t(i),y(i))
   y(i+1)= y(i) + (h*(k1+k2))/2; %funcion general de euler mejorado para mostrar los valores de y
end

%Equipo: 
%Karen Arenas
%Emilio Galindo
%Luis Oliva
%Gerardo Sarao 
