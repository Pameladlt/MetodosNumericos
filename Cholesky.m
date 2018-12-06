function x = Cholesky(A)

%Método de Cholesky solo funciona con matrices cuadradas
%[nxn]

[m,n]=size(A);
if m~=n, error('NO SE PUEDE USAR ESTE METODO CON UNA MATRIZ MxN, TIENE QUE SER CUADRADA'); end

b=[sum(A(1,:)); sum(A(2,:)); sum(A(3,:))];

U=chol(A);      
disp('U= '); disp(U)
d=U'\b;
x=U\d;
disp('x = '); disp(x)
end
