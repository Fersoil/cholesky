% plik testowy do robienia macierzy i innych takich trików


A = gallery('lehmer',2);

%A = [1 0 ; 0 2];

B = [1 0 0; 0 1 0];

X = base_matlab(A, B);

size(B);

%%
A = gallery('lehmer',5);

L = cholesky(A);

T = L*L'


try cholesky(A)
    disp('Matrix is symmetric positive definite.')
catch ME
    disp('Matrix is not symmetric positive definite')
end
%%

A = [1 1 ; 1 2];

B = [1 1 1; 0 1 98];

X = solve_chol(A, B)

X1 = base_matlab(A, B)


%% 
T = [5 0;1 1];

T*solve_triangular(T,B)

