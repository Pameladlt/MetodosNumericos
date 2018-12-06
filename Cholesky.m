function x = Cholesky(A)

%Método de Cholesky solo funciona con matrices cuadradas
%[nxn]

[m,n]=size(A);
if m~=n, error('NO SE PUEDE USAR ESTE METODO CON UNA MATRIZ MxN, TIENE QUE SER CUADRADA'); end

b=[sum(A(1,:)); sum(A(2,:)); sum(A(3,:))]; %Solo en el caso de que no nos den el vector B

U=chol(A);      %Nos dan una matriz A y con este comando nos da la matriz R (triangulo superior)
disp('U= '); disp(U)
d=U'\b; 
x=U\d;
disp('x = '); disp(x)
end
