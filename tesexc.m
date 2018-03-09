
% s = tf('s');
% Gs = 1/(40*s + 3.2)
% 
% Gt = step(Gs)
% 
% grid on;
% 
% figure(2);
% stem(Gt)

num = 1;
den = [40 3.2]

Gc = tf(num, den, 0.1);


step(Gc)
grid