function [] = plot_time(matrix_nameA, matrix_nameB,paramA,paramB, n, mmax)
%funckja generuje wykres czasu rozwiązywania równania AX=B, dla
%zwiększającej się liczby kolumn macierzy B
% martix_nameA, matrix_nameB - nazwy macierzy z matlab gallery
% paramA, paramB - dodatkowe parametry potrzebne do funkcji gallery
% n - ustalona wielkość macierzy A
% mmax - maksymalna szerokość macierzy B

if nargin < 5
    n = 3;
end

if nargin < 6
    mmax = 100;
end

x = 1:mmax;

temp_A = paramA(n);
A = gallery(matrix_nameA, temp_A{:}); % macierz A z gallery
L = cholesky(A);

y = zeros(mmax, 2);

for m=x
    
    temp_B = paramB(n,m);
    B = gallery(matrix_nameB, temp_B{:});  % macierz B z gallery
    

    g = @() solving_func(L, B); % rozwiązywanie równania przy użyciu metody LL'

    f = @() solve_matlab(A,B); % rozwiązywanie równania przy użyciu wbudowanej funkcji inv
    
    
    y(m, :) = [timeit(g),timeit(f)];
end

hold on

plot(x, y(:,1), "r")
plot(x, y(:,2), "b")


legend("czas metody z dekompozycją", "czas funkcji bazowej", 'Location','northwest')
title("Czas obliczeń w zależności od rozmiaru macierzy")

xlabel("liczba kolumn macierzy B")
ylabel("czas")


hold off


end