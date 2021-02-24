%% Matrix Inverse
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/MEconTools/ *MEconTools*> *Repositories*
%% Inverse of a Matrix
% The inverse of $5$ is $\frac{1}{5}$, multiplying the two numbers together 
% gives us 1. What is the inverse of a matrix?
% 
% The product of the inverse of a matrix and the matrix itself is the identity 
% matrix.
%% 
% * $X^{-1}X = I$
% * $XX^{-1} = I$
%% 
% If we generate any random square matrix in matlab, there is always an inverse:

X = rand(3,3)
Xinverse = X^(-1)
Identity = X*Xinverse
%% Rank of a Matrix
%% 
% * (SB P142) *Rank:* The rank of a matrix is the number of non-zero rows in 
% its row echelon form
%% 
% The Rank of a matrix is the number of non-zero rows in the row-echelon form 
% of the matrix. With 2 equations and 2 unknowns, it just means the two lines 
% are not parallel to each other. If two lines are parallel, then through elementary 
% row operations, one will become all zero, and the system of equations will have 
% no solution. 
%% Invertible Matrix
% A square matrix that is invertible has full rank, which means the number of 
% rows equals to the number of columns and the rank of the matrix. This matrix 
% is full-ranked, non-singular and invertible.
%% Solving System of Equations using Inverse
% Given the $N$ by $N$ coefficient matrix $W$ from a system of linear equations, 
% a $N$ by $1$ vector of unkonwns $X$, and $N$ by $1$ vector of outcome values 
% $v$: 
%% 
% * $W \cdot X = v$
%% 
% We can solve for the unknowns by using inverse:
%% 
% # _multiply inverse both sides_:$(W^{-1}\cdot W) \cdot X = W^{-1} \cdot v$
% # left-hand side bomces: $I \cdot X = W^{-1} \cdot v$
% # Identity times a matrix is that matrix, hence: $X = W^{-1} \cdot v$
%% 
% When we use matlab, as an alternative to using the function linsolve, we can 
% solve for the unknown $X$ just by taking the inverse of the coefficient matrix 
% $W^{-1}$ and multiply it by $v$. 
% 
%