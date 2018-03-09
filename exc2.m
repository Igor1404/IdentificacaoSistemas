%a)Utiliza��o da transformada Z inversa
z = tf('z');

num = [0 1.125 0.455];
den = [1 0.757 0.455];

%Transfomada inverza
Gs = filt(num,den,1)

%Plotagem dos polos e zeros no plano Z da fun��o
pzmap(Gs)
grid on


%%

%b)Y(s)/Yp(s) = G(s)/(1+G(s))
num = [0 1.125 0.455];
den = [1 -0.368];
Gd = filt(num,den,1)

%%
%c)Determinar a equa��o � diferen�as
num2 = [0 1.125 0.455];
den2 = [1 0.757 0.455];
Gs2 = filt(num2,den2,1)

%%