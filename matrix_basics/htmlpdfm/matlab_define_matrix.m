%% Laws of Matrix Algebra
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/MEconTools/ *MEconTools*> *Repositories*
%% 6 Old Rules, 5 Still Apply
% We had associative, commutative and distributive laws for scalar algebra, 
% we can think of them as the six bullet points below. Only the multiplicative-commutative 
% law no longer works for matrix, the other rules work for matrix as well as scalar 
% algebra.
% 
% Associative laws work as in scalar algebra for matrix
%% 
% * $(A + B) + C = A + (B + C)$
% * $(A \cdot B) \cdot C = A\cdot (B\cdot C)$
%% 
% Commutative Law works as well for addition
%% 
% * $A + B = B + A$
% * with scalars, we know $3\cdot 4 = 4 \cdot 3$, but commutative law for matrix 
% multiplication does not work, Matrix $A\cdot B \neq B \cdot A$. The matrix dimensions 
% might not even match up for multiplication. (see below for examples)
%% 
% And Distributive Law still applies to matrix
%% 
% * $A\cdot (B + C) = A\cdot B + A\cdot C$
% * $(B + C) \cdot A = B \cdot A + C \cdot A$
%% Example for $A\cdot B \neq B \cdot A$

% Non-Square
A = rand(2,3)
B = rand(3,4)
% This is OK
disp(A*B)
% This does not work
try 
    B*A
catch ME
    disp('does not work! Dimension mismatch')
end

% Square
A = rand(3,3)
B = rand(3,3)
% This is OK
A*B
% This works, but result differs from A*B
B*A
%% 4 New Rules for Transpose
% In scalar algebra, transpose does not make sense. Given matrix $A$, $A^T$ 
% is the transpose matrix of $A$ where each row of $A$ becomes columns in $A^T$. 
% If $A$ is $M$ by $N$, then $A^T$ is $N$ by $M$.
% 
% Given matrix $A$ and scalar value $r$:
%% 
% * *1*: $(r\cdot A)^T = r\cdot A^T$
% * *2*: $(A^T)^T = A$
% * *3:* $(A+B)^T = A^T + B^T$
% * *4*: $(A\cdot B)^T = B^T \cdot A^T$
%% 
% For the 4th rule, suppose matrix $A$ is has $L$ rows and $M$ columns, and 
% the matrix $B$ has $M$ rows and $N$columns. $(A\cdot B)$ is a $L$ by $N$ matrix, 
% $(A\cdot B)^T$ is a $N$ by $L$ matrix. This is equal to $B^T \cdot A^T$, where 
% we have a $N$ by $M$ matrix $B^T$ multiplied by a $M$ by $L$ matrix $A^T$, and 
% the resulting matrix is $N$ by $L$. 

A = rand(2,3)
Atranspose = (A')
%% 
%