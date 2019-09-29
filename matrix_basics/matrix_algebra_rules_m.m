%% Matrix Addition and Multiplication
% *Back to *<http://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Economist Table of Content*>
%% Scalar Multiplication/Division, Addition/Subtraction
% If we multiply a matrix by a number, we multiply every element of that matrix 
% by that number. Addition, subtraction, and division of a matrix with a sclar 
% value work the same way

c = 10
mat_a = rand(3,2)
c*mat_a
mat_a/c
mat_a - c
mat_a + c
%% Addition and Subtraction
% You can add/subtract together two matrixes of the same size. We can add up 
% the two 3 by 1 vectors from above, and the two 2 by 3 matrixes from above.

col_vec_a = rand(3,1)
col_vec_b = rand(3,1)
mat_a = rand(3,2)
mat_b = rand(3,2)
col_vec_a + col_vec_b
mat_a - mat_b
%% 
% When using matlab, even if you add up to a single column or single row with 
% a matrix that has multiple rows and columns, if the column count or row count 
% matches up, matlab will _*broadcast*_ rules, and addition will still be legal. 
% In the example below, mat_a is 3 by 2, and col_vec_a is 3 by 1, matlab duplicate 
% col_vec_a and add it to each column of mat_a (_Broadcast rules are important 
% for efficient storage and computation_):

mat_a + col_vec_a
%% *Matrix Multiplication*
% When we try to multiply two matrixes together: $A \cdot B$ for example, the 
% _*number of columns *_of matrix $A$ and the _*number of rows*_ of matrix $B$ 
% have to match up.
% 
% If the matrix $A$ is has $L$ rows and $M$ columns, and the matrix $B$ has 
% $M$ rows and $N$columns, then the resulting matrix of  $C=A\cdot B$  has to 
% have $L$ rows and $N$ columns. 
% 
% Each of the $(l,n)$ cell in the product matrix $C=A\cdot B$, is equal to:
%% 
% * $C_{l,n} = \sum_{m=1}^M A_{l,m} \cdot B_{m,n}$
%% 
% Note that we are summing over $M$: row $l$ in matrix $A$, and column $n$ in 
% matrix $B$ both have $M$ elements. We multiply each $m$ of the $M$ element from 
% the row in $A$ and column in $B$ together one by one, and then sum them up to 
% end up with the value for the $l$th row and $n$th column in matrix $C$.

% (3 by 4) times (4 by 2) end up with (3 by 2)
L = 3;
M = 4;
N = 2;
mat_A = rand(L, M)
mat_B = rand(M, N)  
mat_C = mat_A*mat_B

% (2 by 10) times (10 by 1) end up with (2 by 1)
L = 2;
M = 10;
N = 1;
mat_A = rand(L, M)
mat_B = rand(M, N)  
mat_C = mat_A*mat_B
%%