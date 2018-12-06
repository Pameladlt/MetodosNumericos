function x = Cholesky(A)
%Cholesky([60 30 20; 30 20 15; 20 15 12])
%Método de Cholesky solo funciona con matrices cuadradas
%[nxn]
%Formula Rx=Y

%Pasos para resolver Cholesky A mano:
%Nos dan una matriz A y un vector b
%Seguimos la formula = Atraspuesta*y = b
%Trasponemos la matriz y lo multiplicamos por y y lo igualamos a b
%hacemos la solucion de ecuaciones


%Pasos para resolver Cholesky con Matlab
%Obtenmos matriz A 
%Verificamos que sea matriz cuadrada
%Pedimos un vector, o lo creamos en caso de que no nos lo den 
% por medio de la funcion chol obtenemos la matriz triangular superior
%por medio de comandos hacemos la solucion de ecuaciones
%despejamos para obtener los resultados

[m,n]=size(A);
if m~=n, error('NO SE PUEDE USAR ESTE METODO CON UNA MATRIZ MxN, TIENE QUE SER CUADRADA'); end

b=[sum(A(1,:)); sum(A(2,:)); sum(A(3,:))]; %Para el caso que no nos den una b

U=chol(A);      %Nos dan una matriz A y con este comando nos da la matriz R (triangulo superior)
disp('U= '); disp(U)

%U^ty=b
d=U'\b; %Para poder sacar los valores de d=Y
x=U\d; %Se despeja X, y eso hace que U(R) sea divida entre d(Y)
disp('x = '); disp(x)
end
