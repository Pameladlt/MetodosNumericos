function x = Cholesky(A)

%Método de Cholesky solo funciona con matrices cuadradas
%[nxn]
%Formula Rx=Y
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
