function x=gauss(Mx,vR);
A=Mx;
b=vR;
[m,n]=size(A);
% Recibimos la Matriz y el vector resultado
% Asignamos los valores a la matriz 'A' y al vector 'b'
% Calculamos el valor de 'm*n', el tamaño de la matriz

if (m~=n)
    error('La matriz debe ser cuadrada');
end
%Verificamos que la matriz sea cuadrada

N=n+1;
doubleA=[A b];


% Eliminación hacia adelante
for(k=1:n-1)
    for(i=k+1:n)
        factor=doubleA(i,k)/doubleA(k,k);
        doubleA(i,k:N)=doubleA(i,k:N)-factor*doubleA(k,k:N);
    end
end

% Sustitución hacia atrás
x=zeros(n, 1);
x(n)=doubleA(n,N)/doubleA(n,n);

for(i=n-1:-1:1)
    x(i)=(doubleA(i,N)-doubleA(i,i+1:n)*x(i+1:n))/doubleA(i,i);
end
x(i);
