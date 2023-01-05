function [] = plot_chol(matrix_nameA,paramA, nmax)
%funckja generuje wykres czasu dekompozycji choleskiego-banachiewicza dla
%zwiększającego się rozmiaru macierzy

% martix_nameA - nazwa macierzy z matlab gallery
% paramA - dodatkowe parametry potrzebne do funkcji gallery
% nmax - maksymalna wielkość macierzy A


if nargin < 3
    nmax = 100;
end

x = 1:nmax;


y = zeros(nmax, 2);

for n=x
    
    temp_A = paramA(n);
    A = gallery(matrix_nameA, temp_A{:});  % macierz A z gallery
    
    g = @() cholesky(A); % dekompozycja nasza

    f = @() chol(A); % dekompozycja wbudowana
    
    y(n, :) = [timeit(g),timeit(f)];
end

hold on

plot(x, y(:,1), "r")
plot(x, y(:,2), "b")


legend("czas metody dekompozycji", "czas funkcji wbudowanej", 'Location','northwest')
title("Czas dekompozycji w zależności od rozmiaru macierzy")

xlabel("rozmiar macierzy A")
ylabel("czas")


hold off


end