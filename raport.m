%% raport
% przyklad 1
A = eye(3)
rng('default');
B = randn(3,4)

check_example(A,B)

%% przykład 2

rng('default');

A = gallery("gcdmat",3)
B = eye(3)

L = cholesky(A)
L*L'
check_example(A,B)

%% przykład 8
rng('default');

A = gallery("gcdmat",3)
B = eye(3)

g = @() solve_chol(A, B);

f = @() solve_matlab(A,B); 
    
timeit(g),timeit(f)

%% przykład 3

A = ones(3) % macierz która nie jest dodatnio określona

B = eye(3);

check_example(A,B);

%% wymiary macierzy B n x 4 


plot_diff("gcdmat", "integerdata", @(n){n}, @(n,m){10,[n, m], 4}, 4)


%% wymiary macierzy B n x 100
% round off errors


plot_diff("gcdmat", "integerdata", @(n){n}, @(n,m){100,[n, m], 4}, 100)


%% przykład 4

A = gallery('lehmer', 100);

B = gallery('normaldata',100,200,44);

plot_diff("lehmer", "normaldata", @(n){n}, @(n,m){n, m, 44}, 100)

check_example(A, B)

%% przykład 5

A = gallery('kms',100,0.66) 

B = gallery('normaldata',100,200,44);


plot_diff("kms", "normaldata", @(n){n, 0.66}, @(n,m){n, m, 44}, 200, 200)

check_example(A, B)

%% przykład 6

A = gallery('minij',1000);


B = gallery('integerdata',100,1000,200,44);


plot_diff("minij", "integerdata", @(n){n}, @(n,m){100, [n, m], 44}, 200, 500)


check_example(A, B)

%% przykład 7

A = gallery("tridiag", 100);

B = gallery('normaldata',100,200,44);

plot_diff("tridiag", "normaldata", @(n){n}, @(n,m){n, m, 44}, 200, 500)

%% przyklad 8
plot_time("lehmer", "normaldata", @(n){n}, @(n,m){n, m, 44}, 100)


%% przyklad 9
plot_time("tridiag", "normaldata", @(n){n}, @(n,m){n, m, 44}, 100, 500)






