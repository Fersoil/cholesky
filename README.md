# Rozwiązywanie równania macierzowego $AX=B$ za pomocą metody Cholesky'ego-Banachiewicza

W poniższym repozytorium znajduje się realizacja drugiego projektu z przedmiotu Metody Numeryczne na kierunku Inżynieria i Analiza Danych MiNi PW.

## Opis zadania

Zadanie polegało na implementacji metody dekompozycji macierzy symetrycznej oraz dodatnio określonej $A$ na iloczyn macierzy dolnotrójkątnych $LL^T$, a także implementacja metody rozwiązującej macierzowe równanie $AX = B$, przy użyciu zaimplementowanej metody.

Dodatkowo, aby sprawdzić działanie zaimplementowanej metody zamieściłem przykłady sprawdzające dokładność oraz szybkość metody, porównując ją z wbudowaną funkcją programu *MATlab* - *inv()* szukającej macierzy odwrotnej.

## Wnioski

Mimo, że zaimplementowana metoda okazała się wolniejsza od metod wbudowanych zarówno w przypadku rozwiązywaniu układu równań, jak i w przypadku zwykłej dekompozycji. Co ciekawe, okazała się trochę bardziej dokładna od wyżej wspomnianych metod.

-------------
Pełen raport, zawierający dokładniejszy opis zadania:

[Raport.pdf](https://github.com/Fersoil/cholesky/files/10333785/Raport.pdf)
