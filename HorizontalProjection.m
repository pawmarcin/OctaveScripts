predkoscpoczatkowa = 5;             
kat = 35*(pi/180);
g = 9.8;
wysokoscpoczatkowa=50;
ruchpoziomy = predkoscpoczatkowa*cos(kat);  
maxczas = 2*predkoscpoczatkowa*cos(kat)/g ; 
czas = 0: maxczas/10 : maxczas;  
wysokosc = -(1/2)*g*czas .^2 + wysokoscpoczatkowa;

#figure,plot( czas, wysokosc)        
title('Rzut poziomy')
xlabel('czas (s)')
ylabel('wysokosc (m)')

clear
clc        
predkoscpoczatkowa = 5;             
kat = randi([-90 90])*(pi/180);
g = 9.8;
wysokoscpoczatkowa  = rand();  
maxczas = 2*predkoscpoczatkowa*cos(kat)/g ; 
czas = 0: maxczas/10 : maxczas;  
wysokosc = -(1/2)*g*czas .^2 + wysokoscpoczatkowa;

plot( czas, wysokosc)        
title('Rzut poziomy')
xlabel('czas (s)')
ylabel('wysokosc (m)')

