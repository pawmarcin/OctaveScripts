pkg load symbolic; 

Tz = 215; 
k = 30; 
t0 = 12; 
syms t positive; 
syms s; 
G = (k/(1+(Tz*s))) * exp(-s*t0); 
U = 1/s; 
H0 = ilaplace(G); 
H1 = ilaplace(G*U); 
y0 = 40; 
t = 1; 
h = 1; 
i = 1; 
T = [1]; 
O = [y0]; 

while (i < 1000) 
if (h == 1) 
  
y = y0 + eval(subs(H1)); 
else 

y = y - eval(subs(H0)); 
endif 

t++; 
if (y > 64 && h == 1) 
h = 0; 
t = 1; 
y0 = y; 

elseif (y < 60 && h == 0) 
h = 1; 
t = 1; 
y0 = y; 
endif 

T = [T; i++]; 
O = [O; y]; 
endwhile; 

plot(T, O); 
title("Pawe³ Marciniak Indeks: 143298"); 
xlabel("Czas"); 
ylabel("Temperatura");