function [X] = base_matlab(A, B)
%base_matlab funkcja przyjmuje dwa argumenty:
% macierz symetryczną A dodatnio określoną o n wierszach,
% macierz B o m kolumnach i n wierszach
% funkcja zwraca macierz X o m kolumnach i n wierszach będącą rozwiązaniem
% równania AX = B
% wyznaczoną za pomocą funkcji matlabowej inv


X = inv(A)*B;
end