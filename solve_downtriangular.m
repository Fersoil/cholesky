function [X] = solve_downtriangular(A, B)
%solve_triangular: funkcja rozwiązuje równanie macierzowe AX=B, gdzie A
%jest macierzą dolnotrójkątną i odwracalną


a_size = size(A);
b_size = size(B);

% sprawdzamy, czy macierze A i B są poprawnych wymiarów, aby wykonać
% mnożenie
if a_size(1) ~= a_size(2)
    ME = MException("Solve_triangular:wrongInput", "Dana macierz A nie jest kwadratowa");
    throw(ME)
end
if a_size(2) ~= b_size(1)
    ME = MException("Solve_triangular:wrongInput", "Macierze A i B mają niezgodne wymiary");
    throw(ME)
end

n = a_size(1);
m = b_size(2);

X = zeros(n, m);

for i = 1:n
    if A(i, i) == 0
        ME = MException("Solve_triangular:wrongInput", "Macierz A nie jest odwracalna");
    throw(ME)
    end
    
    prev = A(i, 1:i-1)*X(1:i-1,:);
    X(i,:) = (B(i,:) - prev) / A(i,i);
end



end