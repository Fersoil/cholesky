function [X] = solve_chol(A,B)
%solve_chol funkcja przyjmuje dwa argumenty:
% macierz symetryczną A dodatnio określoną o n wierszach,
% macierz B o m kolumnach i n wierszach
% funkcja zwraca macierz X o m kolumnach i n wierszach będącą rozwiązaniem
% równania AX = B
% wyznaczoną za pomocą funkcji cholesky i dekompozycji
% Cholesky-Banachiewicza


L = cholesky(A);

Y = solve_downtriangular(L, B);

X = solve_uptriangular(L', Y);

end