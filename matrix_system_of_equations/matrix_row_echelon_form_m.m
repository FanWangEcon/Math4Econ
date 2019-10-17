%% System of Linear Equations, Row Echelon Form
% *back to *<https://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,  *<https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or *<https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*>* Repositories*
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_equations.html 
% System of Linear Equations>
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_system_2.html 
% Solving for Two Equations and Two Unknowns>
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_row_echelon_form.html 
% System of Linear Equations, Row Echelon Form>
%% Two Equations and Two Unknowns
% This is a general system of equations with 2 equations and 2 unknowns
% 
% $$\left[ {\begin{array}{cc} a & b  \\ d & e  \\ \end{array} } \right] \cdot 
% \left[ {\begin{array}{c} x_1 \\ x_2  \end{array} } \right] = \left[ {\begin{array}{cc} 
% a \cdot x_1 + b \cdot x_2 \\ d \cdot x_1 + e \cdot x_2   \\ \end{array} } \right]  
% = \left[ {\begin{array}{c} o \\ p\\ \end{array} } \right]$$
% 
% this is the augmented matrix:
% 
% $$\left[ {\begin{array}{ccl} a & b &| o \\ d & e &| p  \\ \end{array} } \right]$$
% 
% We want to solve for the unknown $x_1$ and $x_2$. In matlab, we just use the 
% _linsolve _function, and in practice we do not solve these by hand. But how 
% is linsolve solving this? 
%% Elementary Row Operations
% There are three things we can do to rows of the augmented matrix that do not 
% change the solution to the linear system, they are called elementary row operations, 
% and are very intuitive: 
%% 
% # Switch two rows in the matrix: we can move a row up or down, the system 
% is still the same
% # Replace an existing row by the sum of the row and a multiple of another 
% row:
% # Multiply all column values of a row by the same non-zero constant: 
%% 
% Using rule 3, we can multiple a row from an augmented matrix by $Z$
%% 
% * $\left[ {\begin{array}{cccc} Z a & Z b & Z  c & | Z  o  \end{array} } \right]$
%% 
% Using rule 2, we can add up $Z$ times a row from an augmented matrix and $Y$ 
% times another row:
%% 
% * $\left[ {\begin{array}{cccc} Z a + Y d  & Z b + Y e & Z c + Y f & | Z o 
% + Y p \end{array} } \right]$
%% Row Echelon Form 
% After using elementary row operations to create _as many zeros as possible_ 
% in the _lower left side_ of the matrix, we end up with a matrix that is equivalent 
% to the original matrix that is in the _Row Echelon Form,_ more formally:
%% 
% * *Leading Zero*: A row of a matrix is said to have, $k$_* leading zero*_, 
% if the first $k$ elements of the row are all zeros and the subsequent elements 
% of the row are not zero.  (SB P131)
% * *Row Echelon Form*: a matrix is in row echelon form if each row has more 
% leading than row preceding (above) it. (SB P131)
% * *Pivot*: the first non-zero element in each row of a matrix that is in row 
% echelon form is called a pivot
%% Row Echelon Form with 2 Equations and 2 Unknowns
% Let's study our system with just 2 equations and 2 unkowns. We can arrive 
% at the row-echelon form in two steps:
% 
% Starting with: $\left[ {\begin{array}{ccl} a & b  &| o \\d & e &| p \\ \end{array} 
% } \right]$:
%% 
% # Multiply second row by $\frac{a}{d}$: $\left[ {\begin{array}{ccl} a & b  
% &| o \\d\cdot(\frac{a}{d}) & e\cdot(\frac{a}{d}) &| p\cdot(\frac{a}{d}) \\ \end{array} 
% } \right]$
% # Subtract the first row from the second row: $\left[ {\begin{array}{ccl} 
% a & b &| o \\ 0 & e\cdot(\frac{a}{d}) - b &| p\cdot(\frac{a}{d}) - o \\\end{array} 
% } \right]$
%% 
% We now have the row-echelon form, because we have as many zeros as possible 
% in the lower left side
%% Reduced Row Echelon Form 
% We can simplify the matrix more and get to the reduced row echelon form.
%% 
% * A row echelon matrix in which each _*pivot*_ is a $1$ and in which each 
% column containing a pivot contains no other non-zero entries a is said to be 
% in _*reduced row echelon form*_. (SB P133)
%% 
% When we are solving a system of $N$ equations with $N$ unknowns, the reduced 
% row echelon form gives the solution for the unknowns. With 2 dimensions, the 
% solution is the intersection of 2 lines, and with 3 dimension, the solution 
% is the point intersection of 3 surfaces.
%% Reduced Row Echelon Form with 2 Equations and 2 Unknowns
% Starting with the row echelon form: $\left[ {\begin{array}{ccl} a & b &| o 
% \\ 0 & e\cdot(\frac{a}{d}) - b &| p\cdot(\frac{a}{d}) - o \\\end{array} } \right]$:
%% 
% # Divide second row by  $\frac{ea - bd}{d}$: $\left[ {\begin{array}{ccl} a 
% & b &| o \\ 0 & 1 &| \left(\frac{pa-od}{d}\right) \cdot \left( \frac{d}{ea - 
% db} \right)  \\\end{array} } \right]$, which simplifies to: $\left[{\begin{array}{ccl} 
% a & b &| o \\ 0 & 1 &| \frac{pa-od}{ea - db} \\\end{array}}\right]$
% # Subtract from first row $b$ times second row : $\left[{\begin{array}{ccl} 
% a & 0 &| o - b\cdot\frac{pa-od}{ea - db} \\ 0 & 1 &| \frac{pa-od}{ea - db} \\\end{array}}\right]$
% # Divide the first row by $a$: $\left[{\begin{array}{ccl} 1 & 0 &| \frac{o}{a} 
% - \left( \frac{b}{a}\cdot\frac{pa-od}{ea - db} \right)\\ 0 & 1 &| \frac{pa-od}{ea 
% - db} \\\end{array}}\right]$
%% 
% Now we have the reduced row echelon form, which tells us that:
%% 
% * $x_1 = \frac{o}{a} - \left( \frac{b}{a}\cdot\frac{pa-od}{ea - db} \right)$
%% 
% and 
%% 
% * $x_2 = \frac{pa-od}{ea - db}$