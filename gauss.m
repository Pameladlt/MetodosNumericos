%gauss([1 -2 -3; 4 2 -3; 6 -8 6],[1;2;7])
%Precaucion La matriz debe ser cuadrada
function x=gauss(MA,Vb); %funcion que recibe una matriz y un vector

A=MA;
b=Vb;
[a,n]=size(A);
lim=n+1;
completa=[A b];
for(j=1:n-1)
for(i=j+1:n)
factor=completa(i,j)/completa(j,j);
completa(i,j:lim)=completa(i,j:lim)-factor*completa(j,j:lim);
end
end
x=zeros(n, 1);
x(n)=completa(n,lim)/completa(n,n);
for(i=n-1:-1:1)
x(i)=(completa(i,lim)-completa(i,i+1:n)*x(i+1:n))/completa(i,i);
end
x(i);
