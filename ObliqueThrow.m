predkoscpoczatkowa = 40             
kat = 35 * (pi/180)
g = 9.8;                                                e
wysokoscpoczatkowa = 0                                 

ruchpionowy = predkoscpoczatkowa*sin(kat);   
ruchpoziomy = predkoscpoczatkowa*cos(kat);  
maxczas = 2*predkoscpoczatkowa*sin(kat)/g ; 
czas = 0: maxczas/10 : maxczas;  
dystans = ruchpoziomy*czas;
wysokosc = -(1/2)*g*czas .^2 + ruchpionowy*czas + wysokoscpoczatkowa;

#figure,plot( czas, wysokosc)
title('Rzut ukosny')
xlabel('czas (s)')
ylabel('wysokosc (m)')

clear 
predkoscpoczatkowa = 40;             
kat = randi([-90 90])*(pi/180);  
g = 9.8                             
wysokoscpoczatkowa = rand();                         

ruchpionowy = predkoscpoczatkowa*sin(kat);   
ruchpoziomy = predkoscpoczatkowa*cos(kat);  
maxczas = 2*predkoscpoczatkowa*sin(kat)/g;  
czas = 0: maxczas/10 : maxczas;  
dystans = ruchpoziomy*czas;
wysokosc = -(1/2)*g*czas .^2 + ruchpionowy*czas + wysokoscpoczatkowa;

figure,plot( czas, wysokosc)        
title('Rzut ukosny')
xlabel('czas (s)')
ylabel('wysokosc (m)')