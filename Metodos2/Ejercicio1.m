% amplitud A = 3, frecuencia f = 2*pi*1/3 y 
% 0 < t < 5*pi
%% Genero un vector que esta yendo de 0 a n en un total de 1024 puntos:
x = linspace(0, n, 1024);
% En este caso me estoy apoyando de una variable n, en la cual puedo
% cambiar el valor, hasta el cual llegara mi vector.
n = 5 * pi;
 
% Ahora mi vector x que se genera corresponde a t, por lo tanto:
t = x;
 
% Como la funcionn que quiero generar, es sinuidal, se tiene que 
% s = A*sin(2*pi*f)*t
 
A = 3;
f = 2 * pi * (1/3);
 
y = A * sin(2*pi*f*t);
 
fsin = y;
size (fsin)
 
%% Una vez determinada la funci√≥n, graficamos:
% subplot(3,1,1)
% plot (t,fsin)
 
%% Genere un ruido Gaussiano de 2^10 datos:
%  con valor medio(mean(x)=0), distribuci√≥n normal rand(x,n) con amplitudes
%  entre -1 < A < 1 y datos igualmente espaciados
 
% Para el ruido gaussiano designamos "Rg"
 
Rg = randn(1,1024); % El error estaba en que anteriormente ten√≠a randn(1024,1) 
                    % lo cual me daba una matriz de 1024x1 cuando lo que se necesitaba era una de 1x1024
                    % Lo pude observar al ver el tama√±o de las matrices, es
                    % decir al usar el comando size()
                    
rg = Rg; % Falta ajustar la amplitud para que quede de -1 a 1
size(Rg)
 
%subplot(3,1,2)
%plot (rg)
 
%% Sume ambas series
%  Con sumar ambas series en realidad se refiere a la funci√≥n sinuidal y al
%  ruido gasussiano generado
 
RG = fsin + rg;
size(RG)
 
figure(1)
title('Figura 1')
subplot(3,1,1)
plot (t,fsin,'--b')
 
subplot(3,1,2)
plot (rg,'m')
 
subplot(3,1,3)
plot(RG,'k')

%% Considerando la serie en el punto anterior polinomios de orden 2,3 con ventanas móviles de 32 datos
figure(3)
hold on
plot(RG,'y')

p1=polyfit(x(1:32),y(1:32),2);
w1=polyval(p1,x(1:32));

p2=polyfit(x(33:64),y(33:64),2);
w2=polyval(p2,x(33:64));

p3=polyfit(x(65:96),y(65:96),2);
w3=polyval(p3,x(65:96));

p4=polyfit(x(97:128),y(97:128),2);
w4=polyval(p4,x(97:128));

p5=polyfit(x(129:160),y(129:160),2);
w5=polyval(p5,x(129:160));

p6=polyfit(x(161:192),y(161:192),2);
w6=polyval(p6,x(161:192));

p7=polyfit(x(193:224),y(193:224),2);
w7=polyval(p7,x(193:224));

p8=polyfit(x(225:256),y(225:256),2);
w8=polyval(p8,x(225:256));

p9=polyfit(x(257:288),y(257:288),2);
w9=polyval(p9,x(257:288));

p10=polyfit(x(289:320),y(289:320),2);
w10=polyval(p10,x(289:320));

p11=polyfit(x(321:352),y(321:352),2);
w11=polyval(p11,x(321:352));

p12=polyfit(x(353:384),y(353:384),2);
w12=polyval(p12,x(353:384));

p13=polyfit(x(385:416),y(385:416),2);
w13=polyval(p13,x(385:416));

p14=polyfit(x(417:448),y(417:448),2);
w14=polyval(p14,x(417:448));

p15=polyfit(x(449:480),y(449:480),2);
w15=polyval(p15,x(449:480));

p16=polyfit(x(481:512),y(481:512),2);
w16=polyval(p16,x(481:512));

p17=polyfit(x(513:544),y(513:544),2);
w17=polyval(p17,x(513:544));

p18=polyfit(x(545:576),y(545:576),2);
w18=polyval(p18,x(545:576));

p19=polyfit(x(577:608),y(577:608),2);
w19=polyval(p19,x(577:608));

p20=polyfit(x(609:640),y(609:640),2);
w20=polyval(p20,x(609:640));

p21=polyfit(x(641:672),y(641:672),2);
w21=polyval(p21,x(641:672));

p22=polyfit(x(673:704),y(673:704),2);
w22=polyval(p22,x(673:704));

p23=polyfit(x(705:736),y(705:736),2);
w23=polyval(p23,x(705:736));

p24=polyfit(x(737:768),y(737:768),2);
w24=polyval(p24,x(737:768));

p25=polyfit(x(769:800),y(769:800),2);
w25=polyval(p25,x(769:800));

p26=polyfit(x(801:832),y(801:832),2);
w26=polyval(p26,x(801:832));

p27=polyfit(x(833:864),y(833:864),2);
w27=polyval(p27,x(833:864));

p28=polyfit(x(865:896),y(865:896),2);
w28=polyval(p28,x(865:896));

p29=polyfit(x(897:928),y(897:928),2);
w29=polyval(p29,x(897:928));

p30=polyfit(x(929:960),y(929:960),2);
w30=polyval(p30,x(929:960));

p31=polyfit(x(961:992),y(961:992),2);
w31=polyval(p31,x(961:992));

p32=polyfit(x(993:1024),y(993:1024),2);
w32=polyval(p32,x(993:1024));

%plot(x(1:32),y(1:32),'--m',x(33:64),y(33:64),'--m',x(65:96),y(65:96),'--m',x(97:128),y(97:128),'--m',x(129:160),y(129:160),'--m',x(161:192),y(161:192), '--m', x(193:224),y(193:224), '--m',x(225:256),y(225:256),'--m', x(257:288),y(257:288), '--m', x(289:320),y(289:320), '--m', x(321:352),y(321:352), '--m', x(353:384),y(353:384), '--m', x(385:416),y(385:416), '--m',x(417:448),y(417:448),'--m', x(449:480),y(449:480),'--m', x(481:512),y(481:512),'--m',x(513:544),y(513:544),'--m',x(545:576),y(545:576),'--m',x(577:608),y(577:608),'--m', x(609:640),y(609:640), '--m', x(641:672),y(641:672),'--m',x(673:704),y(673:704),'--m', x(705:736),y(705:736), '--m',x(737:768),y(737:768), '--m', x(769:800),y(769:800), '--m', x(801:832),y(801:832), '--m', x(833:864),y(833:864), '--m', x(865:896),y(865:896), '--m', x(897:928),y(897:928),'--m',x(929:960),y(929:960), '--m',x(961:992),y(961:992), '--m',x(993:1024),y(993:1024), '--m' )   
plot(x(1:32),w1,'-b',x(33:64), w2,'-b', x(65:96), w3, '-b', x(97:128),w4, '-b', x(129:160), w5, '-b', x(161:192), w6,'-b', x(193:224),w7, '-b', x(225:256), w8,'-b', x(257:288), w9,'-b',x(289:320), w10, '-b',  x(321:352), w11,'-b', x(353:384), w12, '-b', x(385:416), w13, '-b',x(417:448), w14, '-b', x(449:480), w15, '-b', x(481:512), w16, '-b', x(513:544), w17, '-b',  x(545:576), w18, '-b', x(577:608),w19,'-b',x(609:640),w20,'-b', x(641:672),w21,'-b',x(673:704),w22,'-b', x(705:736),w23,'-b', x(737:768),w24,'-b', x(769:800),w25,'-b', x(801:832),w26,'-b',x(833:864),w27,'-b',x(865:896),w28,'-b', x(897:928),w29,'-b',x(929:960),w30,'-b',x(961:992),w31,'-b',x(993:1024),w32,'-b' )   
%fo2 = plot(x(1:32),w1,x(33:64), w2, x(65:96), w3, x(97:128),w4, x(129:160), w5, x(161:192), w6, x(193:224),w7, x(225:256), w8, x(257:288), w9,x(289:320), w10,  x(321:352), w11, x(353:384), w12, x(385:416), w13,x(417:448), w14, x(449:480), w15, x(481:512), w16, x(513:544), w17,  x(545:576), w18, x(577:608),w19,x(609:640),w20, x(641:672),w21,x(673:704),w22, x(705:736),w23, x(737:768),w24, x(769:800),w25, x(801:832),w26,x(833:864),w27,x(865:896),w28,x(897:928),w29,x(929:960),w30,x(961:992),w31,x(993:1024),w32);
%plot (fo2)

% Orden 3
P1=polyfit(x(1:32),y(1:32),3);
W1=polyval(P1,x(1:32));

P2=polyfit(x(33:64),y(33:64),3);
W2=polyval(P2,x(33:64));

P3=polyfit(x(65:96),y(65:96),3);
W3=polyval(P3,x(65:96));

P4=polyfit(x(97:128),y(97:128),3);
W4=polyval(P4,x(97:128));

P5=polyfit(x(129:160),y(129:160),3);
W5=polyval(P5,x(129:160));

P6=polyfit(x(161:192),y(161:192),3);
W6=polyval(P6,x(161:192));

P7=polyfit(x(193:224),y(193:224),3);
W7=polyval(P7,x(193:224));

P8=polyfit(x(225:256),y(225:256),3);
W8=polyval(P8,x(225:256));

P9=polyfit(x(257:288),y(257:288),3);
W9=polyval(P9,x(257:288));

P10=polyfit(x(289:320),y(289:320),3);
W10=polyval(P10,x(289:320));

P11=polyfit(x(321:352),y(321:352),3);
W11=polyval(P11,x(321:352));

P12=polyfit(x(353:384),y(353:384),3);
W12=polyval(P12,x(353:384));

P13=polyfit(x(385:416),y(385:416),3);
W13=polyval(P13,x(385:416));

P14=polyfit(x(417:448),y(417:448),3);
W14=polyval(P14,x(417:448));

P15=polyfit(x(449:480),y(449:480),3);
W15=polyval(P15,x(449:480));

P16=polyfit(x(481:512),y(481:512),3);
W16=polyval(P16,x(481:512));

P17=polyfit(x(513:544),y(513:544),3);
W17=polyval(P17,x(513:544));

P18=polyfit(x(545:576),y(545:576),3);
W18=polyval(P18,x(545:576));

P19=polyfit(x(577:608),y(577:608),3);
W19=polyval(P19,x(577:608));

P20=polyfit(x(609:640),y(609:640),3);
W20=polyval(P20,x(609:640));

P21=polyfit(x(641:672),y(641:672),3);
W21=polyval(P21,x(641:672));

P22=polyfit(x(673:704),y(673:704),3);
W22=polyval(P22,x(673:704));

P23=polyfit(x(705:736),y(705:736),3);
W23=polyval(P23,x(705:736));

P24=polyfit(x(737:768),y(737:768),3);
W24=polyval(P24,x(737:768));

P25=polyfit(x(769:800),y(769:800),3);
W25=polyval(P25,x(769:800));

P26=polyfit(x(801:832),y(801:832),3);
W26=polyval(P26,x(801:832));

P27=polyfit(x(833:864),y(833:864),3);
W27=polyval(P27,x(833:864));

P28=polyfit(x(865:896),y(865:896),3);
W28=polyval(P28,x(865:896));

P29=polyfit(x(897:928),y(897:928),3);
W29=polyval(P29,x(897:928));

P30=polyfit(x(929:960),y(929:960),3);
W30=polyval(P30,x(929:960));

P31=polyfit(x(961:992),y(961:992),3);
W31=polyval(P31,x(961:992));

P32=polyfit(x(993:1024),y(993:1024),3);
W32=polyval(P32,x(993:1024));

% spline cub
% plot(x(1:32),y(1:32),':y',x(33:64),y(33:64),':y',x(65:96),y(65:96),':y',x(97:128),y(97:128),':y',x(129:160),y(129:160),':y',x(161:192),y(161:192), ':y', x(193:224),y(193:224), ':y',x(225:256),y(225:256),':y', x(257:288),y(257:288), ':r', x(289:320),y(289:320), ':r', x(321:352),y(321:352), ':r', x(353:384),y(353:384), ':r', x(385:416),y(385:416), ':r',x(417:448),y(417:448),':r', x(449:480),y(449:480),':r', x(481:512),y(481:512),':r',x(513:544),y(513:544),':r',x(545:576),y(545:576),':r',x(577:608),y(577:608),':r', x(609:640),y(609:640), ':r', x(641:672),y(641:672),':r',x(673:704),y(673:704),':r', x(705:736),y(705:736), ':r',x(737:768),y(737:768), ':r', x(769:800),y(769:800), ':r', x(801:832),y(801:832), ':r', x(833:864),y(833:864), ':r', x(865:896),y(865:896), ':r', x(897:928),y(897:928),':r',x(929:960),y(929:960), ':r',x(961:992),y(961:992), ':r',x(993:1024),y(993:1024), ':r' )   
plot(x(1:32),W1,':k',x(33:64), W2,':k', x(65:96), W3, ':k', x(97:128),W4, ':k', x(129:160), W5, ':k', x(161:192), W6,':k', x(193:224),W7, ':k', x(225:256), W8,':k', x(257:288), W9,':r',x(289:320), W10, ':k',  x(321:352), W11,':k', x(353:384), W12, ':k', x(385:416), W13, ':k',x(417:448), W14, ':k', x(449:480), W15, ':k', x(481:512), W16, ':k', x(513:544), W17, ':k',  x(545:576), W18, ':k', x(577:608),W19,':k',x(609:640),W20,':k', x(641:672),W21,':k',x(673:704),W22,':k', x(705:736),W23,':k', x(737:768),W24,':k', x(769:800),W25,':k', x(801:832),W26,':k',x(833:864),W27,':k',x(865:896),W28,':k', x(897:928),W29,':k',x(929:960),W30,':k',x(961:992),W31,':k',x(993:1024),W32,':k' )   

% 2º grado y 3º grado
s1 = w1+W1;
s2 = w2+W2;
s3 = w3+W3;
s4 = w4+W4;
s5 = w5+W5;
s6 = w6+W6;
s7 = w7+W7;
s8 = w8+W8;
s9 = w9+W9;
s10 = w10+W10;
s11 = w11+W11;
s12 = w12+W12;
s13 = w13+W13;
s14 = w14+W14;
s15 = w15+W15;
s16 = w16+W16;
s17 = w17+W17;
s18 = w18+W18;
s19 = w19+W19;
s20 = w20+W20;
s21 = w21+W21;
s22 = w22+W22;
s23 = w23+W23;
s24 = w24+W24;
s25 = w25+W25;
s26 = w26+W26;
s27 = w27+W27;
s28 = w28+W28;
s29 = w29+W29;
s30 = w30+W30;
s31 = w31+W31;
s32 = w32+W32;

figure(2)
subplot(2,1,1)
plot(RG,'y')
subplot(2,1,2)
plot(x(1:32),s1,'--k',x(33:64),s2,'--k',x(65:96),s3,'--k',x(97:128),s4,'--k',x(129:160),s5,'--k',x(161:192),s6,'--k',x(193:224),s7,'--k', x(225:256),s8,'--k',x(257:288),s9,'--k',x(289:320),s10,'--k',x(321:352),s11,'--k',x(353:384),s12,'--k',x(385:416),s13,'--k',x(417:448),s14,'--k',x(449:480),s15,'--k',x(481:512),s16,'--k',x(513:544),s17,'--k',x(545:576),s18,'--k',x(577:608),s19,'--k',x(609:640),s20,'--k',x(641:672),s21,'--k',x(673:704),s22,'--k',x(705:736),s23,'--k',x(737:768),s24,'--k',x(769:800),s25,'--k',x(801:832),s26,'--k',x(833:864),s27,'--k',x(865:896),s28,'--k',x(897:928),s29,'--k',x(929:960),s30,'--k',x(961:992),s31,'--k',x(993:1024),s32) 

%F=figure(RG)-figure(3);
%figure(4)
%plot(F)
