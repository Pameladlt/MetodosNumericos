
%Metodo Minimos Cuadrados
%intenta determinar la función continua que mejor se aproxime a los datos 

function f = m2(x,y)

C = polyfit(x,y,2);
min=x(1);
max=x(1);
for(i=2:length(x))
    if(x(i-1)<x(i))
       %disp(max)
       max=x(i);
       %disp(max)
    end
    if(x(i-1)>x(i))
        disp('min')
        min=x(i);
    end
end

xx=linspace(min, max, 100);
yy=polyval(C,xx);
disp(xx)
disp(yy)
