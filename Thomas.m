function x = Thomas(e,f,g,r)
%e=Vector diagonal superior contigua a la principal
%f=Vector diagonal principal
%g=vector diagonal inferior contigua a la principal
%r=vector de resultados (estilo b)

n=length(f);

for k=2:n
    factor = e(k)/f(k-1);
    f(k)=f(k)-factor*g(k-1);
    r(k)=r(k)-factor*r(k-1);
end

x(n)=r(n)/f(n);
for k=n-1:-1:1
    x(k)=(r(k)-g(k)*x(k+1))/f(k);
end
for i=1:length(x)
    fprintf('\nx%d-%f\n',i,x(i));
end