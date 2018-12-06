% Método de la bisección:
% 1. Selecciona un intervalo [a,b]
% 2. Calculo del punto medio como nuevo punto
% 3. Revisión de cambio de signo, producto f(a)·f(b)
% 4. Si el producto es cero, entonces tenemos una raíz,
%    sino se repite el proceso a partir del paso 2.

% En esta función se deben ingresar los siguientes datos:
% - la función a evaluar (f),
% - el límite inferior (a) y superior (b),
% - y la tolerancia de error posible (e).

function [y] = m_biseccion(f,a,b,e)

clc 

format long 

% Se debe establecer a "f" como una funcion a partir de una entrada str,
% agregando un @(x) antes de la función en la que se evaluara
fh = str2func(f);

% Se inicializan valores para valores y datos auxiliares,
% estos últimos en caso de ser requeridos.
c = 0;
n = 0; % n: número de iteración
e_max_ps = (b-a)/2;

% Para apreciar las iteraciones y los resultados que 
% se van obteniendo durante el proceso,
% se hace el siguiente arreglo:
% fprintf('\t n \t\ta \t\t    c \t\t        b \t\t        Error\n') 
% \t para tabulación, \n para salto de línea

% Para saber si continuan las iteraciones, se comparan
% los valores del maximo error posible (e_max_ps)
% con la tolerancia de error ingresada (e).
while (e_max_ps > e)
    c = (a+b)/2;
    %disp([n,a,c,b,e_max_ps]) 
    % De esta manera creamos un vector fila, es decir, los datos se
    % acomodan en un renglón
    if ( fh(a)*fh(c) < 0) 
        % Con esta condición, evaluamos el cambio de signo, 
        % es decir, si el producto es menor a 0, se tiene un numero negativo, 
        % por lo tanto el valor obtenido en "c", será el nuevo valor para "b", 
        % y por otro lado, si da un numero positivo, el numero nuevo será 
        % el valor de "a".
        b = c;
    else a = c;
    end
    e_max_ps = (b-a)/2;
    n = n+1;
end

fprintf('Raiz encontrada con una tolerancia de error de %.10f, en la iteración %.1f:\n\t%.15f\n', e, n, c)
y = c;









