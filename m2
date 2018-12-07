%Metodo Minimos Cuadrados
%intenta determinar la función continua que mejor se aproxime a los datos 

function f=m2(Vectorx,Vectory)
FuncionAproximada = polyfit(Vectorx,Vectory,2);
min=Vectorx(1);
max=Vectorx(1);

for(i=2:length(Vectorx))
    if(Vectorx(i-1)<Vectorx(i))
       max=Vectorx(i);
    end
    if(Vectorx(i-1)>Vectorx(i))
        min=Vectorx(i);
    end
end

xx=linspace(min, max, 100);
yy=polyval(FuncionAproximada,xx);
disp(xx)
disp(yy)
plot(xx,yy)
