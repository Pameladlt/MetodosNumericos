function [t,x] = RK4(f,t0,tf,x0,n)
%Variable independiente t = Tiempo
%Variable dependiente x con respecto el tiempo
%F=Ecuación diferencial que se ingresará
%t0=Valor inicial de x
%tf=Valor final de x (al que se llegará)
%x0=Condición inicial de la variable dependiente
%n=Número de intervalos que se harán

h=(tf-t0)/n; %tamaño de paso 
disp('Tamaño de Paso = '); disp(h)
t=t0:h:tf; %desde t0(inicial) aumentará con el tamaño de paso hasta llegar
%a tf(final)
x=zeros(n+1,1);%se almacenarán los datos de las iteraciones aqui
disp('Datos de irteraciones almacenados= '); disp(x)
x(1)=x0; %la primera iteración será con el valor inicial

%ciclo for por ciclo iterativo
for i=1:n %hasta n iteraciones n(valor dado)
    k1=h*f(t(i),x(i));
    k2=h*f(t(i)+h/2,x(i)+k1/2);
    k3=h*f(t(i)+h/2,x(i)+k2/2);
    k4=h*f(t(i)+h,x(i)+k3);
    
    x(i+1)=x(i)+(k1+2*k2+2*k3+k4)/6;
end
plot(t,x)
end