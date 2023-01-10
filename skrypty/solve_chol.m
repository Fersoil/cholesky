function [X] = solve_chol(A,B)
%solve_chol funkcja przyjmuje dwa argumenty:
% macierz symetryczną A dodatnio określoną o n wierszach,
% macierz B o m kolumnach i n wierszach
% funkcja zwraca macierz X o m kolumnach i n wierszach będącą rozwiązaniem
% równania AX = B
% wyznaczoną za pomocą funkcji cholesky, czyli przy użyciu dekompozycji
% Cholesky-Banachiewicza

% szukamy takiego L, że LL' = A
L = cholesky(A);

% rozwiązujemy układ równań LY = B
Y = solve_triangular(L, B, "lower");

% rozwiązujemy układ równań L'X = Y
X = solve_triangular(L', Y, "upper");

% wówczas X spełnia równanie L(L'X) = LY = B

end