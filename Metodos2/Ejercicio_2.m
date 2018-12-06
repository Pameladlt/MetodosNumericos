t = [1 2 3 4 5] %DIA T
v = [229.30 290.05 351.20 403.25 437.90] %VALORES DE REFERENCIA


%polyfit encuentra los coeficientes de ajuste de una orden polinomial
%para sacar el orden de los valores
p1=table(t,v)
p1 = polyfit(t,v,2) %los 3 valores v=tercer valor, a=segundo valor, b=primer valor
y_p1=polyval(p1,t)

max(y_p1) %ya que tengo el valor maximo, sustituyo los valores obtenido con 
%las variables y le saco la inversa para poder sacar el valor de t
%correspondiente
%al valor maximo de y (V)

y = 152.5700 + (79.3114*t) - (-4.3786*(t.^2)); %se saca la derivada
diff(y)
max(diff(y))%se saca el valor maimo de t