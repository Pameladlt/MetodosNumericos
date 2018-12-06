function [t,x] = RK4(f,t0,tf,x0,n)
%Variable independiente t = Tiempo
%Variable dependiente x con respecto el tiempo
%F=Ecuaci�n diferencial que se ingresar�
%t0=Valor inicial de x
%tf=Valor final de x (al que se llegar�)
%x0=Condici�n inicial de la variable dependiente
%n=N�mero de intervalos que se har�n

h=(tf-t0)/n; %tama�o de paso 
disp('Tama�o de Paso = '); disp(h)
t=t0:h:tf; %desde t0(inicial) aumentar� con el tama�o de paso hasta llegar
%a tf(final)
x=zeros(n+1,1);%se almacenar�n los datos de las iteraciones aqui
disp('Datos de irteraciones almacenados= '); disp(x)
x(1)=x0; %la primera iteraci�n ser� con el valor inicial

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