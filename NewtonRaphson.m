
%Metodo Newton Rahphson

%Para hallar una solución aproximada de f(x) = 0, dada una aproximación inicial p0.
%Entrada: aproximación inicial p0 ; tolerancia TOL; cantidad máxima de iteraciones N;
%Salida: solución aproximada p ó mensaje de fracaso.
%Paso 1: Tomar i = 1;
%Paso 2: Mientras que i < N seguir pasos 3-6;
%Paso 3: Tomar P0 -f(P0)/f'(P0)
% Calculamos pi .
%Paso 4: Si │p – p0│<TOL entonces SALIDA(p);
%Paso 5: Tomar i = i+1
%Paso 6: Tomar p0 = p % redefinir p0 .
%Paso 7: SALIDA


%Recibiendo Funcion
function y=NewtonRaphson(func, x, flex)
iteraciones=1;
Funcionderivada=diff(sym(func));
f=subs(func,x);
d=subs(Funcionderivada,x);


% Iteramos hasta sacar el último valor de 'x'
while abs(f)>flex
    x_nuevo=x-(f/d);
    f=subs(func,x_nuevo);
    d=subs(Funcionderivada,x_nuevo);
    x=x_nuevo;
    iteraciones=iteraciones+1;
end

% Imprimimos el número de iteraciones necesarias para llegar
% al resultado, junto con el resultado
iteraciones
x_nuevo
