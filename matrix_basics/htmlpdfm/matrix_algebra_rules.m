%% Matrix Addition and Multiplication
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*> *Repositories*
%% Scalar Multiplication/Division, Addition/Subtraction
% If we multiply a matrix by a number, we multiply every element of that matrix 
% by that number. Addition, subtraction, and division of a matrix with a sclar 
% value work the same way

c = 10
matA = rand(3,2)
c*matA
matA/c
matA - c
matA + c
%% Addition and Subtraction
% You can add/subtract together two matrixes of the same size. We can add up 
% the two 3 by 1 vectors from above, and the two 2 by 3 matrixes from above.

colVecA = rand(3,1)
colVecB = rand(3,1)
matA = rand(3,2)
matB = rand(3,2)
colVecA + colVecB
matA - matB
%% 
% When using matlab, even if you add up to a single column or single row with 
% a matrix that has multiple rows and columns, if the column count or row count 
% matches up, matlab will _*broadcast*_ rules, and addition will still be legal. 
% In the example below, matA is 3 by 2, and colVecA is 3 by 1, matlab duplicate 
% colVecA and add it to each column of matA (_Broadcast rules are important for 
% efficient storage and computation_):

matA + colVecA
%% *Matrix Multiplication*
% When we try to multiply two matrixes together: $A \cdot B$ for example, the 
% _*number of columns*_ of matrix $A$ and the _*number of rows*_ of matrix $B$ 
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
matA = rand(L, M)
matB = rand(M, N)  
matC = matA*matB

% (2 by 10) times (10 by 1) end up with (2 by 1)
L = 2;
M = 10;
N = 1;
matA = rand(L, M)
matB = rand(M, N)  
matC = matA*matB
%%