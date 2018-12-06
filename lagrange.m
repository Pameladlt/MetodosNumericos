
%lagrange([1 4 5],[4 5 6])
% Interpolación de Lagrange
% En esta función se ingresan en forma vectorial los puntos a evaluar,
% de tal forma que se devuelven los coefecientes del polinomio,
% recordando que de derecha a izquierda, se comienza con el término 
% independiente (x^0 = 1) y de ahí se va aumentado el exponencial 

function [C] = lagrange(x,y) 

clc

p = length(x); % Cantidad de puntos, en donde tambien se podría tomar
               % la longitud de y, pues tienen el mismo tamaño de vector.
n = p-1; % Grado del polinomio 

% Para auxiliarnos en el calculo, se va a crear una matriz de 0,
% donde se van a ir almacenando los coeficientes del polinomio de Lagrange.
L = zeros(p,p);

% Procedimiento
for k = 1:n+1
    i = 1; 
    % Parametro de ayuda para multiplicar todos los factores de 
    % los coeficientes de Lagrange, en el primer caso sería 1 multiplicado 
    % por (x)*(x-1), luego para k = 2 sería 1 por (x-1)*(x-2) 
    % para k=3 1 por (x-1)*(x-2)*(x-3) y así sucevimanete hasta llegar a n+1.
    for j = 1:n+1;
        % Ya que todos los numeradores y denominadores tienen el "mismo
        % valor", sin embargo la única diferencia es que k y j no pueden
        % ser iguales en el denominador, entonces se estable una condición
        if k ~= j
            i = conv(i,poly(x(j)))/(x(k)-x(j));
            % Aquí lo que estamos haciendo es seguir la formula
            % Para la multiplicación de polinomios se utiliza el comando
            % conv
            % El polinimo de xj, o sea, si j vale 1, sería x-x1, luego para j=2 sería 1 por x-x1 por 1*x-1x-2   
            % dividido entre x(k) - x(j), aquí es donde observamos que si k
            % y j fueran iguales en el denominador no se podría llevar
            % acabo ya que daría 0.
        end 
    end
    
    % Actualizamos matriz L 
    L (k,:) = i  % Con esto hacemos que la fila k sea igual a lo que encontramos en i
end 

% Por último hacemos una combinación lineal, es decir,
% lo que nos indica P(x) = y0(l0) + y1(l1)...
C = y*L


