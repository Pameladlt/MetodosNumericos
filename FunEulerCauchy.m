function eulerCauchy(a,b,yt0,n)
%input
%a=valor inicial (Intervalo)
%b=valor final (Intervalo)
%yt0= valor inicial
%n= cantidad de intervalos

x=zeros();
y=zeros();
h=(b-a)/n;

x(1)=a; %el primer valor para x
y(1)=yt0; 
for i=1:n 
   x(i+1)=a+h*i; 
   k1=feval(fun,x(i),y(i));
   k2=feval(fun,x(i+1),y(i)+h*k1);
   y(i+1)= y(i) + (h*(k1+k2))/2; 
end
