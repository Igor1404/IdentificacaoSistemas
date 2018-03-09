%%
%a)Transformada inversa de placa para a função de transferencia dada
syms s;
syms t;
syms z;

%Função de transferencia
Gsa = (1+2*s)/(70*s^2 + 17*s + 1)
Gta = ilaplace(Gsa,s,t)
Gca = ztrans(Gsa,t,z)
%%

%b)Transformada Z
Gtb = 4/(15*exp((t-4)/10)) - 5/(21*exp((t-4)/7))
Gzb = ztrans(Gtb,t,z)

%%

%%
%c)Transformada Z da nova equação
Gsc = 1/(10*s^2 + s)
Gtc = ilaplace(Gsc,s,t)
Gzc = ztrans(Gtc,t,z)
%%