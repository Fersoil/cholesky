function [c] = check_example(A,B)
%check_example: funkcja sprawdza poprawność przykładów

X = solve_chol(A, B);

X_base = solve_matlab(A,B);

if abs(A*X-B) < 1e3*eps(min(abs(A*X),abs(B)))
    disp("wynik bardzo blisko poprawności")
end
if abs(X-X_base) < 1e3*eps(min(abs(X),abs(X_base)))
    disp("wynik bardzo blisko zgodny z funkcją matlaba")
end


c = [mean(abs(A*X - B), 'all'), mean(abs(A*X_base - B), 'all'), mean(abs(X - X_base), 'all')];

end