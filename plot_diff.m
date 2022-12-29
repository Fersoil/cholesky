function [] = plot_diff(matrix_nameA, matrix_nameB,paramA,paramB, m, nmax)
%funckja generuje wykres dokładności rozwiązywania równania AX=B, dla
%zwiększającego się rozmiaru macierzy

if nargin < 5
    m = 3;
end

if nargin < 6
    nmax = 100;
end

x = 1:nmax;

for n=x
    
    temp_A = paramA(n);
    temp_B = paramB(n,m);
    A = gallery(matrix_nameA, temp_A{:});
    B = gallery(matrix_nameB, temp_B{:});  
    
    t = check_example(A,B);
    y(n, :) = t
end

hold on

plot(x, y(:,1), "r")

plot(x, y(:,2), "b")


legend("błąd metody z dekompozycją", "błąd funkcji bazowej", 'Location','northwest')
title("Wielkość błędu w zależności od rozmiaru macierzy")

xlabel("rozmiar macierzy kwadratowej A")
ylabel("wielkość błędu")


hold off


end