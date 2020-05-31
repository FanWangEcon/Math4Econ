%% Creating Matrixes in Matlab
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*> *Repositories*
%% Matlab Define Row and Column Vectors (Matrix)

% A column vector 4 by 1, with three numbers you fill in by yourself
colVec = [5;2;3;10]
% Another column vector with 4 random numbers
colVecRand = rand(4,1)
% A row vector 1 by 4
rowVec = [3,2,4,5]
% A row vector 1 by 4 with random number
rowVecRand = rand(1,4)
%% Matlab Define a Matrix

% A 2 by 3 matrix by hand
matA = [1,2,1;
         3,4,10]
% Another 2 by 3 matrix, now with random numbers
matRand = rand(2,3)
% Another 2 by 3 matrix, now with random integers between 1 and 10
% rand draws between 0 and 1, ceil converts 0.1 to 1, 1.1 to 2, etc
matRand = ceil(rand(2,3)*10)
%% Matlab Define a Square Matrix

% A 4 by 4 square matrix
matSquare = rand(4)
% or can define 4 by 4
matSquare = rand(4, 4)
% or can define 4 by 4, between 1 and 5 each number
matSquare = ceil(rand(4, 4)*5)
%% Identity Matrix
% If a matrix $A$ is square matrix with the same number of rows and columns, 
% and all diagonal elements are $1$ and non-diagonal elements are $0$, then $A$ 
% is an identity matrix:
%% 
% * $A_{i,j}$ are the value in the ith row and jth column of the matrix $A$
% * $A$ is an identity matrix, when: $A_{i,j} = 0 \text{ if } i \neq j$, $A_{i,j} 
% = 1 \text{ if } i = j$

% 4 by 4 identity matrix
identity4by4 = eye(4)
%% 
% When a matrix is muplieid by the identity matrix, you get the same matrix 
% back, for example, multiplying random integer 4 by 4 matrix by the 4 by 4 identity 
% matrix:

matSquare
matSquareTimesIdentity = matSquare*identity4by4
%% 
% When a row vector is muplieid by the identity matrix, you get the same vector 
% back, for example, multiplying random integer 1 by 4 row vector by the 4 by 
% 4 identity matrix:

rowVec
rowVecTimesIdentity = rowVec*identity4by4
%% 
% When an identity matrix is multiplied by a column vector, you get the same 
% vector back, for example, multiplying 4 by 4 identity matrix by random integer 
% 4 by 1 column vector by the :

colVec
colVecTimesIdentity = identity4by4*colVec
%% Lower-Triangular Matrix and Upper-Triangular Matrix
% A lower triangular matrix is a square matrix where:
%% 
% * Square matrix$A$ is a *lower triangular* matrix, when: $A_{i,j} = 0 \text{ 
% if } i < j$
% * Square matrix$A$ is a *upper triangular* matrix, when: $A_{i,j} = 0 \text{ 
% if } i > j$

% lower triangular matrix of matA 
lowerTriangular = tril(matSquare)
% upper triangular matrix of matA 
upperTriangular = triu(matSquare)
%% Three Dimensions Matrix (Tensor)

% 3 by 3 by 2, storing multiple matrixes together in tenA
tenA = zeros(3,3,2);
tenA(:,:,1) = rand(3,3);
tenA(:,:,2) = rand(3,3);
disp(tenA);

% Creating four 2 by 3 matrixes
matRand = rand(2,3,4)
disp(matRand);