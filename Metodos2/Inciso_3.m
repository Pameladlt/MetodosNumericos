x=[2.0,1.5,1.0,0.5,0.0,0.5,1.0,1.5,2.0];
y=[0.0,0.2,0.7,1.0,0.0,-1.0,-0.7,-0.2,0.0];

p1=polyfit(x,y,1);  %Entrega coeficientes/ctes de un pol. orden 1
v1=polyval(p1,x); %Le damos los valores de los coeficientes para crear internamente el pol de orden 1

hold on
plot(x,y,'x','MarkerEdgeColor','green');
grid on;
xlabel('Generando curva suave que pasa por los puntos dados a x & y');