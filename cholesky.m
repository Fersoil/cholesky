function [L] = cholesky(A)
%chomsky funkcja zwraca macierz L, która jest dekompozycją macierzy A
%sposobą cholesky-banachiewicza i spełnia warunek postaci A = LL^T
%A - macierz symetryczna, dodatnio określona
%L - macierz dolnotrójkątna

if ~isequal(A', A)
    warning("Macierz A nie jest symetryczna");
end

A_size = size(A);
if A_size(1) ~= A_size(2)
    warning("Złe wymiary macierzy")
end

n = min(A_size);
L = zeros(n,n);

for k = 1:n
    L(k,k) = sqrt(A(k,k) - sum(L(k,1:k-1).^2));
    if imag(L(k,k)) ~= 0
        ME = MException("Cholesky:wrongInput", "Macierz A nie jest dodatnio określona");
        throw(ME)
    end

    for i = k+1:n
        L(i,k) = (A(i,k) - sum(L(i,1:k-1).*L(k,1:k-1)))/L(k,k);
    end
end


end