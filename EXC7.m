%%Estimulação dos valores na pelo método impulsivo
na = 2;
nb = 3;
h(1) = 0.68;
h(2) = 1.07;
h(3) = 1.27;
h(4) = 1.34;
h(5) = 1.33;
h(6) = 1.28; 
h(7) = 1.21;
h(8) = 1.11;


%Estipulação das váriaveis da matriz H
for i = 1:na
    for j = 1:na
      ha(i,j) = h(i+j-1);
    end
    hauxl(i)= -h(i+2);
    
end

%Organizando os valores definidos em A
hauxl'
ha1 = inv(ha)
ah = ha1*hauxl'
a = [ah(2) ah(1)]


%Estipulação dos valores da matriz B
for j = 1:nb
    for i = 1:nb
        if j>i
            hb(j,i) = a(j-1);
        elseif j==i
            hb(j,i) = 1;
        else
            hb(j,i) = 0;
        end
    end
end

%Organização dos valores estipulados através dos calculos recursivos acima
haux2 = [0 h(1) h(2)]
b = (hb*haux2')'