function y = secant(funcion,a,b,tolerancia)
u=subs(funcion,a);
v=subs(funcion,b);
c=2;
x0=a;
x1=b;

while abs(u)>tol
    p=x0-u*(x1-x0)/(v-u);
    x0=p;
    x1=b;
    u=subs(funcion,x0);
    v=subs(funcion,x1);
    c = c+1;
    
end
c
p