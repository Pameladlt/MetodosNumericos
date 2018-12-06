% Método de descomposición LU
% A debe ser una matriz cuadrada mxn, o sea m=n (m filas, n columnas)
% Esta función nos devolverá los valores de x, al ingresar una matriz A
% b es un vector columna, que corresponde al resultado del producto Ax 

function [x] = m_LU(A,b)

clc

[n,n] = size (A); 
% Esto nos ayudará, para que podamos trabajar
% con distintos tamaños de matriz, por lo cual,
% es importante conocer el tamaño de A

for k = 1:n
    L (k,k) = 1;
    for i = k+1:n
        L (i,k) = A(i,k) / A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j) - L(i,k)*A(k,j);
        end
    end
    for j=k:n
        U(k,j) = A (k,j);
    end
end

y = inv(L)*b; % Valor auxiliar para encontrar valores de x

x = inv(U)*y;





