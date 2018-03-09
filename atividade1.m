%Atividade de identificação de sistemas;

s = tf('s')
G1 = exp(-4*s)/(s+1)^3
G2 = exp(-4.045*s)/(2.8078*s + 1)
G3 = exp(-5.404345*s)/(1.77148*s + 1)
%  Gs1 = step(G1);
%  Gs2 = step(G2);
 


stepplot(G1)

 
grid on;








% G2 = 1/(s+1)^8


% figure(2)
% % step(G2)
% grid on;