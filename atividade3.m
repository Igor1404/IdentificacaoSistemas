na = 3;
nb = 4;
h(1) = 7.157039;
h(2) = 9.491077;
h(3) = 8.563889;
h(4) = 5.930506;
h(5) = 2.845872;
h(6) = 0.144611;


for i = 1:na
   for j = 1:na
       ha(i,j) = h(i+j-1);
   end
   haux1(i) = -h(i+3);
end

ha1 = inv(ha);
ah = ha1*haux1';
a = [ah(3) ah(2) ah(1)]

for j = 1:nb
    for i = 1:nb
    if j>i
        hb(j,i) = a(j-i);
    elseif j==i
        hb(j,i) = 1;
    else
        hb(j,i) = 0;
    end
    end

end

haux2 = [0 h(1) h(2) h(3)]
b = (hb*haux2')'
