function [X] = solve_triangular(A, B, opt)
%solve_triangular: funkcja rozwiązuje równanie macierzowe AX=B, gdzie A
%jest macierzą dolnotrójkątną i odwracalną
% opt opisuje czy dana macierz jest dolnotrójkątna - "lower", czy
% górnotrójkątna - "upper"


if nargin == 2
    opt = "upper";
end

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


% w zależności od opcji opt będziemy rozwiązywać układ równań od dołu, albo
% od góry - jeżeli macierz jest górnotrójkątna zaczynamy rozwiązywać ją od
% ostatniego wiersza
if opt == "upper"
    w = n:-1:1;
end
if opt == "lower"
    w = 1:n;
end

for i = w
    % podobnie jak wcześniej uwzględniamy odpowiednie współczynniki
    % macierzy A w zależności jakiego jest kształtu
    if opt == "upper"
        v = n:-1:i+1;
    end
    if opt == "lower"
        v = 1:i-1;
    end

    if A(i, i) == 0
        ME = MException("Solve_triangular:wrongInput", "Macierz A nie jest odwracalna");
    throw(ME)
    end
    
    prev = A(i, v)*X(v,:);
    X(i,:) = (B(i,:) - prev) / A(i,i);
end


end