%% System of Linear Equations
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/MEconTools/ *MEconTools*> *Repositories*
%% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_equations.html 
% System of Linear Equations>
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_system_2.html 
% Solving for Two Equations and Two Unknowns>
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_row_echelon_form.html 
% System of Linear Equations, Row Echelon Form>
%% Linear Equation
% If we have an equation: $a \cdot x_1 + b \cdot x_2 + c \cdot x_3 = o$, we 
% can write this in matrix form:
%% 
% * $\left[ {\begin{array}{ccc} a & b & c  \\ \end{array} } \right] \cdot \left[ 
% {\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array} } \right] = \left[ {\begin{array}{cc} 
% a \cdot x_1 + b \cdot x_2 + c \cdot x_3 \end{array} } \right]  = \left[ {\begin{array}{c} 
% o \end{array} } \right]$
%% 
% This is a linear equation, where we have a sequence of variables multiplied 
% by coefficients, more generally, this is a linear equation with $n$ unknown 
% variables, and $n+1$ known coefficients, note the $a$ at the beginning:
%% 
% * $a + \beta_1 \cdot x_1 + \beta_2 \cdot x_2 + ...  + \beta__{n-1} \cdot x_{n-1} 
% + \beta_n \cdot x_n = 0$
%% 
% In 2 dimension (with two unknowns), this is a line; in 3 dimension, this is 
% a surface. 
%% System of Linear Equations
% We have a system of linear equations, 3 equations and 3 unknowns:
%% 
% * $\left[ {\begin{array}{ccc} a & b & c \\ d & e & f \\ g & h & i \\ \end{array} 
% } \right] \cdot \left[ {\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array} } \right] 
% = \left[ {\begin{array}{cc} a \cdot x_1 + b \cdot x_2 + c \cdot x_3 \\ d \cdot 
% x_1 + e \cdot x_2 + f \cdot x_3  \\ g \cdot x_1 + h \cdot x_2 + i \cdot x_3  
% \\  \end{array} } \right]  = \left[ {\begin{array}{c} o \\ p \\ q \\ \end{array} 
% } \right]$
%% 
% We can define these:
%% 
% * $W = \left[ {\begin{array}{ccc} a & b & c \\ d & e & f \\ g & h & i \\ \end{array} 
% } \right]$
% * $\mathbf{X} = \left[ {\begin{array}{c} x_1 \\ x_2 \\ x_3 \end{array} } \right]$
% * $v = \left[ {\begin{array}{c} o \\ p \\ q \\ \end{array} } \right]$
%% Augmented Form
% We can write $W$ and $v$ together like this, this is the augmented matrix 
% of the system of linear equations:
%% 
% * _*Augmented*_ Matrix:$\left[ {\begin{array}{cccc} a & b & c & | o \\ d & 
% e & f &| p \\ g & h & i &| q \\ \end{array} } \right]$
%%