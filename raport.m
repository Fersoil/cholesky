%% raport
% przyklad 1
A = eye(10);
rng('default');
B = randn(10,15);

check_example(A,B);

%% przykład 2

A = ones(4) % macierz która nie jest dodatnio określona

B = ones(4);

check_example(A,B);


%% przykład 3
% round off errors

A = gallery("gcdmat",5)

B = gallery('integerdata',10,[5,4],4)

check_example(A, B)

%% przykład 4

A = gallery('lehmer', 100);

B = gallery('normaldata',100,200,44);

check_example(A, B)

%% przykład 5

A = gallery('kms',100,0.66) 

B = gallery('normaldata',100,200,44);


check_example(A, B)

%% przykład 6

A = gallery('minij',1000);


B = gallery('integerdata',100,1000,200,44);

check_example(A, B)

%% przykład 7

A = gallery("tridiag", 100);

B = gallery('normaldata',100,200,44);


check_example(A, B)





