function [X] = solving_func(L,B)
%funkcja pomocnicza w funkcji rysującej wykres czasu, rozwiązuje równanie
%LL'X = B
Y = solve_triangular(L, B, "lower");
X = solve_triangular(L', Y, "upper");
end