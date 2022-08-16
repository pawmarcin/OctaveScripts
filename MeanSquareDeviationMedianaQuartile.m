#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
N=1000 #ilosc wierszy
M=1 #ilosc kolumn
a=-10 #zakres minimalny 
b=10 #zakres maksymalny
#-----------------------------------------------
x= randi([a,b],[N,M]); #funkcja losujaca randomowe liczby z zakresu <-10,10>
#-----------------------------------------------
plot(x); # wykres liniowy od punktu do punktu 
#-----------------------------------------------
j=1
tab={}  # tablica, ktora bedzie przechowywala dodatnie argumenty
for i=1:1:N; #petla przechodzaca przez tablice x 
if(x(i)>0);  # instrukcja pobierajaca tylko dodatnie argumenty 
tab(j++) = x(i);
end;
end;
#-----------------------------------------------
x = tab # kontynuujemy strukture danych, czyli przypiujemy x-owi tabLiczbDodatnich
  changed = true; # BubbleSort
S = numel(x); #zwraca liczbe elementow w obiekcie x 
while(changed) 
    changed = false;
    S = S - 1; 
    for i = (1:S)
        if(x{i} > x{i+1})
            x([i i+1]) = x([i+1 i]); 
            changed = true;
        end 
    end
end
x # tablica posortowanych liczb metoda BubbleSort
#-----------------------------------------------
x2=tab # przyjmujemy x2, jako ta sama tablice liczb dodatnich
s=numel(x2)
for i=1:s;
min_index = i;
for j=i+1:s
if x2{min_index} > x2{j}
min_index=j;
end
end
if(min_index~=i)
temp = x2(min_index);
x2(min_index) = x2(i);
x2(i) = temp;
end
end
x2 #tablica posortowanych liczb metoda quicksort 
#-----------------------------------------------
for i=1:1:s-1; # petla sprawdzajaca kazdy element tablic x i x2 w celu weryfikacji zgodnosci
  if x2{i}=x{i};
    printf ("Zgadza sie \n");
end;
end;
#-----------------------------------------------
x3=x2;
#-----------------------------------------------
vector = vertcat(x3{:}); # zamiana tablicy x3 na vector 
#-----------------------------------------------
Srednia=mean(vector) # obliczenie sredniej arytmetycznej
#-----------------------------------------------
Mediana=median(vector) # mediana
#-----------------------------------------------
Kwartyla=quantile(vector) #kwartyla 
#-----------------------------------------------
OdchylenieStandardowe=std(vector) # odchylenie standardowe 
#-----------------------------------------------
vectortab = vector; 
vectortab = vertcat(tab{:}); # zamiana tablicy na vector
err = vectortab-vector; # odchylenie 
odchylenieKwadratowe = err.^2; # odchylenie kwadratowe 
odchylenieSrednioKwadratowe = mean(odchylenieKwadratowe); #odchylenie sredniokwadratowe 
odchylenieSrednioKwadratowe
#-----------------------------------------------
#Pozdrawiam! Pawel Marciniak PUW 2021 D1 Modelowanie i symulacja komputerowa 
#-----------------------------------------------