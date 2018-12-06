function GramSchmidt(A)
%A puede ser una matriz de mxn
%Factorizacion QR construida mediante el proceso de ortogonalizacion de
%Gram Schmidt
n=size(A,1);
Q=ones(n); 
R=ones(n); %Matriz triangular tamaño n
%Ejemplo A=[1 2 -2; 0 1 2; 1 0 0]
for j=1:n
    v=A(:,j);
    for i=1:j-1
        R(i,j)=Q(:,i)'*A(:,j); %rij=qi,aj
        v=v-R(i,j)*Q(:,i); %vj=aj-r1jq1....
    end
    R(j,j)=norm(v); %rjj=norma2 de vj
    Q(:,j)=v/R(j,j); %qj=vj/rjj
end
disp('Matriz Q');
Q
disp('Matriz R');
R
disp('Demostrando factorizacion con A=QR');
Q*R