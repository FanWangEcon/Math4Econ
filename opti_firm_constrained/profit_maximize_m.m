%% *Firm's Profit Maximization and Cost Minimization Problems given Cobb Douglas Production Function*
% *back to *<https://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,  *<https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or *<https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*>* Repositories*
% 
% We have already solved the firm's maximization problem before given decreasing 
% return to scale: <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>
% 
% Now, Let's solve the firm's problem with constraints. We can divide the profit 
% maximization problem into two parts: 1, given a desired level of output, optimize 
% over the optimal bundle of capital and labor; 2, given the result from the first 
% part, optimize over the quantity of outputs. Here we focus on the first part, 
% which can be thought of as a cost minimization or profit maximization problem.
%% Profit Maximization with Constraint
% Let's now write down the firm's cost minimization problem with the appropriate 
% constraints, using the Cobb-Douglas production function. 
% 
% We can state the problem as a profit maximization problem:
%% 
% * $\max_{K,L} \left\{ p\cdot A K^\alpha L^\beta - w \cdot L - r \cdot K \right\}$
% * such that: $A K^\alpha L^\beta = q$, where $q$ is some desired level of 
% output
%% 
% We can write down the lagrangian for this problem:
%% 
% * $\mathcal{L} = \left\{ p\cdot A K^\alpha L^\beta - w \cdot L - r \cdot K 
% \right\} - \mu \cdot (AK^\alpha L^\beta -q)$
%% 
% Now, the maximization problem has three choice variables, $L, K, \mu$, where 
% $\mu$ is the lagrange multiplier. 
% 
% _*Step 1*_: We can plug things into matlab's symbolic toolbox

% These are the parameters
syms p A alpha beta w r q
% These are the choice variables
syms K L m
% The Lagrangian
lagrangian = (p*A*(K^alpha)*(L^beta) - w*L - r*K) - m*(A*(K^alpha)*(L^beta) - q)
%% 
% _*Step 2*_: As before, we can differentiate and obtain the gradient

d_lagrangian_K = diff(lagrangian, K);
d_lagrangian_L = diff(lagrangian, L);
d_lagrangian_m = diff(lagrangian, m);  
GRADIENT = [d_lagrangian_K; d_lagrangian_L; d_lagrangian_m]
%% 
% _*Step 3*_: We can solve the problem. Let's plug in some numbers (matlab in 
% this case is unable to solve the problem with symbols):

% Given we have many symbols, type K, L, mu at the end to let matlab know what we are solving for
GRADIENT = subs(GRADIENT, {A,p,w,r,q,alpha,beta},{1,1,1,1,2,0.3,0.7});
solu = solve(GRADIENT(1)==0, GRADIENT(2)==0, GRADIENT(3)==0, K, L, m, 'Real', true);
solu_K = double(solu.K);
solu_L = double(solu.L);
solu_m = double(solu.m);
table(solu_K, solu_L, solu_m)
%% 
% _*Step 4*_: What is the gradient at the optimal choices?
% 
% These are almost all exactly zero, which is what we expect, at the optimal 
% choices, gradient should be 0. (SB P460)

GRADIENT_at_optimum = double(subs(GRADIENT, {K,L,m}, {solu_K, solu_L, solu_m}))
%% 
% _*Step 5*_: What is the hessian with respect to $K,L$ (excluding $\mu$) at 
% the optimal choices?
% 
% The second derivative condition is a little bit more complicated. You can 
% see details on P460 of SB. In practice, we find the hessian only with respect 
% to the real choices, not the multipliers, and we check if the resulting matrix 
% is *negative definite*. If it is, we have found a *local maximum*. 

HESSIAN = [diff(GRADIENT(1), K), diff(GRADIENT(2), K);...
           diff(GRADIENT(1), L), diff(GRADIENT(2), L)];
HESSIAN_at_optimum = double(subs(HESSIAN, {K,L,m}, {solu_K, solu_L, solu_m}))
%% 
% Is the Hessian Positive definite or negative definite? Let's prove by trial 
% and try some random vectors and use the $x A x'$ rule:

% An empty vector of zeros
xAx_save = zeros(1,100);
% Try 100 random xs and see what xAx equal to
for i=1:100
    x = rand(1,2);
    xAx_save(i) = x*HESSIAN_at_optimum*x';
end
% Let's see the first 5 elements:
xAx_save(1:5)
% OK the first 5 elements are negative, what about the rest?
% This command creates a new vector equal to FALSE (or 0) if above or equal 0, and TRUE (or 1) if below 0
is_negative = (xAx_save < 0);
is_negative(1:5)
% This counts how many are negative, should be 100, because this is a maximum
sum(is_negative)
%% Cost Minimization with Constraint
% We can actually re-write the problem as a cost minimization problem, because 
% the first term in the objective function actually is always equal to $q$, so 
% that does not change regardless of the choices we make, so we can take it out, 
% and say we are minimizing the cost. So we can re-write the problem as:
%% 
% * $\min_{K,L} \left\{ w \cdot L + r \cdot K \right\}$
% * such that: $A K^\alpha L^\beta = q$, where $q$ is some desired level of 
% output
%% 
% We can write down the lagrangian for this problem:
%% 
% * $\mathcal{L} = \left\{ w \cdot L + r \cdot K \right\} - \mu \cdot (AK^\alpha 
% L^\beta -q)$
%% 
% This problem looks a little different, will we get the same solution? Yes, 
% we can call the solutions below as the solutions to the COO's problem.
%% Cost Minimization Problem--Optimal Capital Labor Choices
% Taking derivative of $L$, $K$ and $\mu$ with respect to the lagrangian, and 
% setting first order conditions to $0$, we can derive the optimal constrained 
% capital and labor choices using the first order conditions above, they are (they 
% would be the same if we derived them using the constrained profit maximization 
% problem earlier):
%% 
% * $K^*(w,r,q) =  \left(\frac{q}{A}\right)^{\frac{1}{\alpha + \beta}} \cdot 
% \left[ \frac{\alpha}{\beta}\cdot\frac{w}{r} \right]^{\frac{\beta}{\alpha + \beta}}$
% * $L^*(w,r,q) =  \left(\frac{q}{A}\right)^{\frac{1}{\alpha + \beta}} \cdot 
% \left[ \frac{\alpha}{\beta}\cdot\frac{w}{r} \right]^{\frac{-\alpha}{\alpha + 
% \beta}}$
%% 
% If you divide the optimal constrained capital and labor choice equations above, 
% you will find the optimal ratio is the same as what we derived in the unconstrained 
% profit maximization problem: <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>:
%% 
% * $\frac{K^*(r, w)}{L^*(r, w)} = \frac{w}{r}\cdot \frac{\alpha}{\beta}$
%% 
% This means the constraint does not change the optimal capital and labor ratio.
%% Cost Minimization Problem--Solving on Matlab
% _*Step 1*_: We can plug things into matlab's symbolic toolbox

clear all
% These are the parameters
syms p A alpha beta w r q
% These are the choice variables
syms K L m
% The Lagrangian
lagrangian_min = (w*L + r*K) - m*(A*(K^alpha)*(L^beta) - q)
%% 
% _*Step 2*_: As before, we can differentiate and obtain the gradient

d_lagrangian_min_K = diff(lagrangian_min, K);
d_lagrangian_min_L = diff(lagrangian_min, L);
d_lagrangian_min_m = diff(lagrangian_min, m);  
GRADIENT = [d_lagrangian_min_K; d_lagrangian_min_L; d_lagrangian_min_m]
%% 
% _*Step 3*_: We can solve the problem. Let's plug in some numbers:

% Given we have many symbols, type K, L, mu at the end to let matlab know what we are solving for
GRADIENT = subs(GRADIENT, {A,p,w,r,q,alpha,beta},{1,1,1,1,2,0.3,0.7});
solu = solve(GRADIENT(1)==0, GRADIENT(2)==0, GRADIENT(3)==0, K, L, m, 'Real', true);
solu_K = double(solu.K);
solu_L = double(solu.L);
solu_m = double(solu.m);
table(solu_K, solu_L, solu_m)
%% 
% _*Step 4*_: What is the gradient at the optimal choices?
% 
% These are almost all exactly zero, which is what we expect, at the optimal 
% choices, gradient should be 0. (SB P460)

GRADIENT_at_optimum = double(subs(GRADIENT, {K,L,m}, {solu_K, solu_L, solu_m}))
%% 
% _*Step 5*_: What is the hessian with respect to $K,L$ (excluding $\mu$) at 
% the optimal choices?
% 
% The second derivative condition is a little bit more complicated. You can 
% see details on P460 of SB. In practice, we find the hessian only with respect 
% to the real choices, not the multipliers, and we check if the resulting matrix 
% is *positive definite*. If it is, we have found a *local minimum*. 

HESSIAN = [diff(GRADIENT(1), K), diff(GRADIENT(2), K);...
           diff(GRADIENT(1), L), diff(GRADIENT(2), L)];
HESSIAN_at_optimum = double(subs(HESSIAN, {K,L,m}, {solu_K, solu_L, solu_m}))
%% 
% Is the Hessian Positive definite or negative definite? Let's prove by trial 
% and try some random vectors and use the $x A x'$ rule:

% An empty vector of zeros
xAx_save = zeros(1,100);
% Try 100 random xs and see what xAx equal to    
for i=1:100
    x = rand(1,2);
    xAx_save(i) = x*HESSIAN_at_optimum*x';
end
% Let's see the first 5 elements:
xAx_save(1:5)
% OK the first 5 elements are positive, what about the rest?
% This command creates a new vector equal to FALSE (or 0) if below or equal 0, and TRUE (or 1) if above 0
is_positive = (xAx_save > 0);
is_positive(1:5)
% This counts how many are postiive, should be 100, because this is a minimum
sum(is_positive)
%%