% y(1) = 0;
% u(1) = 0;
% soma1 = 0;
% soma2 = 0;
% 
% for i = 2:30
%     u(i) = 1;
%     y(i) = 0.9*y(i-1)+u(i-1);
% end
% 
% for k = 1:29
%     soma1 = soma1 + y(k)*(y(k+1) - u(k));
%     soma2 = soma2 + y(k)^2;
%     teta(k) = soma1/soma2;
%    
% end
% 
% t=1:29;
% plot(t,teta(t));
% grid on;

%%

%y(t) = theta*y(t-1) + u(t-1) ---- 20 amostras


%Montagem da equação à diferenças
y = zeros(1,20)%Valor estipulado dos parametros Y
u = ones(1,20)%Valores estipuladors dos parametros u
teta = zeros(1,20)%Valor teta que será estipulado
theta = 0.75%Valor teta pré definido na questão
soma1 = 0;
soma2 = 0;

%Primeiro processo recursivo
for i=2:20
  y(i) = 0.75*y(i-1) + u(i-1);
end

%Segundo processo recursivo estipular os valores de theta para 20 amostras
for k = 1:19
    
    soma1 = soma1 + y(k)*(y(k+1)-u(k));
    soma2 = soma2 + y(k)^2;
    teta(k) = soma1/soma2;
end

t = 1:20

%Plotagem dos valores de Y
figure(1)
stem(t,y)

grid on

%Plotagem dos valores de Teta
figure(2)
plot(t,teta(t));
grid



