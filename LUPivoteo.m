%LUPivoteo([1 2; -3 4])

function LUPivoteo(A)
%Factorizacion LU con pivoteo parcial
[n, n1] = size(A);
L=eye(n); %Matriz  L triangular inferior inicializada como identidad
P=eye(n); %Matriz permutacion P inicializada como identidad
U=A;

for j = 1:n
  [pivot m] = max(abs(U(j:n, j)));     
  m = m+j-1;
  if m ~= j
    U([m,j],:) =  U([j,m], :);   % Intercambia filas m y j en U
    P([m,j],:) =  P([j,m], :);   % Intercambia filas m y j en P
    if j >= 2;  
      L([m,j],1:j-1) =  L([j,m], 1:j-1); %Intercambiar filas m y j en columnas 1:j-1 de L
    end;  
  end
  for i = j+1:n      
    L(i, j) = U(i, j) / U(j, j);
    U(i, :) =  U(i, :) - L(i, j)*U(j, :);
  end
end
%A=[1 2 3; 4 5 6; 7 8 0];
disp('Matriz L');
L
disp('Matriz U');
U
disp('Matriz P');
P
disp('Demostracion con LU=PA');
disp('Matriz LU');
L*U
disp('Matriz PA');
P*A

