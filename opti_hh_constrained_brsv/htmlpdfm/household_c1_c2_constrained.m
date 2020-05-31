%% Intertemporal Utility Maximization 
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*> *Repositories*
% 
% We previously solved for the unconstrained household's savings and borrowing 
% problem: <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% unconstrained problem>. 
%% Utility Maximization over Consumption in Two Periods
%% 
% * *Utility*: $U(c_{1}, c_{2}) = \log(c_{1}) + \beta \cdot \log(c_{2})$
% * *Budget Today*: $c_{1} + b \le Z_1$
% * *Budget Tomorrow*: $c_{2} \le b\cdot (1+ r ) + Z_2$
% * $c_1 > 0$, $c_2 > 0$
%% 
% We have solved this problem as an unconstrained maximization problem by eliminating 
% the consumption terms (<https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% unconstrained problem>). If we keep the consumption terms but eliminatethe $b$ 
% term, then the problem is a constrained maximization problem with an income 
% constraint:
%% 
% * *Budget Today and Tomorrow Together*: $c_{2} = (Z_1 - c_1)(1+r) + Z_2$
%% 
% Note that we have replaced the inequality symbol by an equality symbol. The 
% income constraints are always going to bind because households will not waste 
% income given log utility which is always increasing in consumption. This also 
% means we don't have to worry about the positive consumption constraints, because 
% households will never consume at 0 since utility is not defined. We can rewrite 
% the budget constraint as follows:
%% 
% * *Budget Today and Tomorrow Together*: $c_{1}\cdot(1 + r) + c_{2} = Z_1 \cdot 
% (1+r) + Z_2$
%% 
% Rewriting the problem as we do above has a nice interpretation. In this model, 
% there is no production, endowment is fixed, and we allow the household to freely 
% transfer resources from today to tomorrow and vice-versa. So in effect, we have 
% two good that we are buying, $c_1$ and $c_2$. They seem to be the same good 
% so they should have the same price, but they do not, because consumption in 
% the first period is more expensive, since if you don't consume in the first 
% period, and save, you can earn interests and have higher $c_2$. The price of 
% $c_1$ is hence $1+r$. On the other hand, the price of $c_2$ is just $1$. The 
% total resource available is on the right-hand-side of the equation. Your grandmother 
% is transferring resources $Z_1$ and $Z_2$ to you, but the resources transfered 
% in the first period is worth more because of the possibility of saving it. Again, 
% we can bring the two periods together because the household is allowed to borrow 
% and save. Given that we do not have uncertainty, our two period intertemporal 
% problem has actually only one budget constraint. We can not do this for the 
% problem with <https://fanwangecon.github.io/Math4Econ/nonlinear/RiskyAsset.html 
% uncertainty>. 
% 
% The problem here is stated for $c_1$ and $c_2$, and is the intertemporal optimal 
% choice problem. However, replace $c_1$ by apples consumed today, $c_2$ by bananas 
% consumed today, and change the budget so that $Z_1$ is the endowment from your 
% grandmother who is an apple producer, and $Z_2$ is the endowment from your other 
% grandmother who is a banana producer. All solutions follow. We would replace 
% $(1+r)$ by $P_A$, the price of apples, and we can also add in $P_B$ , the price 
% of bananas. The key thing about building these models is that we can easily 
% relabel variables and use the same framework to analyze different types of problems. 
% For each type of problem, we could modify how the budget works, what is exactly 
% in the utility function, but the structure of optimizing utility given budget 
% is the same. 
%% First Order Conditions of the Constrained Consumption Problem
% Note again we already know the solution of this problem from: <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% unconstrained problem>. What we are doing here is to resolve the problem, but 
% now directly for $c_1$ and $c_2$, rather than $b$. But the results are the same 
% because once you know $b$ you know the consumption choices from the budget, 
% and vice-versa. The solution method here is more complicated because we went 
% from an one-choice problem in <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% unconstrained problem> to a three choice problem below. But the solution here 
% is more general, allowing us to have addition constraints that can not be easily 
% plugged directly into the utility function. 
% 
% To solve the problem, we write down the Lagrangian, and solve a problem with 
% three choices. 
%% 
% * $\mathcal{L} = \log(c_{1}) + \beta \cdot \log(c_{2}) - \mu \left( c_{1}\cdot(1 
% + r) + c_{2} - Z_1 \cdot (1+r) - Z_2 \right)$
%% 
% We have three partial derivatives of the lagrangian, and at the optimal choices, 
% these are true: 
%% 
% * $\frac{\partial \mathcal{L}}{\partial c_1} = 0$, then, $\frac{1}{c^{\ast}_{1}} 
% =   \mu (1 + r)$
% * $\frac{\partial \mathcal{L}}{\partial c_2} = 0$, then, $\frac{\beta}{c^{\ast}_{2}} 
% =   \mu$
% * $\frac{\partial \mathcal{L}}{\partial \mu} = 0$, then, $c^{\ast}_{1}\cdot(1 
% + r) + c^{\ast}_{2} = Z_1 \cdot (1+r) + Z_2$
%% Optimal Relative Allocations of Consumptions in the First and Second Periods
% Bringing the firs two conditions together, we have:
%% 
% # $\frac{\beta}{c^{\ast}_{2}} =  \frac{1}{c^{\ast}_{1}\cdot (1+r)}$
% # $\frac{c^{\ast}_1}{c^{\ast}_{2}} =  \frac{1}{\beta\cdot (1+r)}$
% # $c^{\ast}_1 =  \frac{1}{\beta\cdot (1+r)} \cdot c^{\ast}_{2}$
%% 
% Which tells us that the optimal ratio of consumption in the two periods is 
% determined not by total resource available but by the interest rate $r$ and 
% preference for future $\beta$. If the interest rate is higher, one will consume 
% less today relative to tomorrow. If $\beta$ is higher, which means we like the 
% future more, one will also consume less today relative to tomorrow.
%% Optimal Consumption Choices
% Using the third first order condition, and the optimal consumption ratio, 
% we have:
%% 
% # $\frac{1}{\beta\cdot (1+r)} \cdot c^{\ast}_{2}\cdot(1 + r) + c^{\ast}_{2} 
% = Z_1 \cdot (1+r) + Z_2$
% # $\frac{c^{\ast}_{2}}{\beta} + c^{\ast}_{2} = Z_1 \cdot (1+r) + Z_2$
% # $c^{\ast}_{2} = \frac{Z_1 \cdot (1+r) + Z_2}{1 + \frac{1}{\beta}}$
%% 
% Now we have the optimal consumption level. If endowments in either the first 
% or second periods are higher, the household would consume more in the second 
% period. If the interest rate is higher, the household would consume more in 
% the second period, if $\beta$ moves from 1 to 0, the numerator gets larger, 
% and the optimal choice gets smaller: this means the more you dislike to future 
% relative to today, the less you will consume in the future. 
% 
% With the solution for $c^{\ast}_2$, we also know:
%% 
% # $c^{\ast}_1 =  \frac{1}{\beta\cdot (1+r)} \cdot \frac{Z_1 \cdot (1+r) + 
% Z_2}{1 + \frac{1}{\beta}}$
% # $c^{\ast}_1 =  \frac{Z_1 + Z_2\cdot \frac{1}{1+r}}{1 + \beta}$
%% 
% This means similar to the optimal choice for $c_2$, households will consume 
% more if endowments are higher. Now, opposite from before, if interest rate is 
% higher, the numerator gets smaller, and the household consume less in the first 
% period. If $\beta$ gets closer to 0, the household will consume more today as 
% well.
% 
% The solutions here are *Marshallian*.
%% Indirect Utility
% We have a special name for the utility function when it is evaluated at the 
% optimal choices, it is called indirect utility:
%% 
% * *Indirect Utility function*: $U(c^{\ast}_1(r,Z_1,Z_2), c^{\ast}_2(r,Z_1,Z_2)) 
% = V^{\ast}(r,Z_1,Z_2)$
%% 
% Given the solutions, we have:
%% 
% # $V^{\ast}(r,Z_1,Z_2) = \log\left( \frac{Z_1 + Z_2\cdot \frac{1}{1+r}}{1 
% + \beta} \right) + \beta \cdot \log\left( \frac{Z_1 \cdot (1+r) + Z_2}{1 + \frac{1}{\beta}} 
% \right)$
% # $V^{\ast}(r,Z_1,Z_2) = \log\left( \frac{Z_1 \cdot \left( 1 + r \right) + 
% Z_2 }{\left(1 + \beta\right) \cdot \left(1+r \right) } \right) + \beta \cdot 
% \log\left( \frac{Z_1 \cdot (1+r) + Z_2}{\left(1+\beta\right)\cdot \beta^{-1}} 
% \right)$
% # $V^{\ast}(r,Z_1,Z_2) = \left(1 + \beta\right) \log\left( \frac{Z_1 \cdot 
% \left( 1 + r \right) + Z_2 }{1 + \beta} \right) + \log \left( \frac{\beta^{\beta}}{1+r} 
% \right)$
% # $V^{\ast}(r,Z_1,Z_2) = \log\left( \left( \frac{Z_1 \cdot \left( 1 + r \right) 
% + Z_2 }{1 + \beta} \right)^{\left(1 + \beta\right)} \cdot  \left( \frac{\beta^{\beta}}{1+r} 
% \right) \right)$
%% Optimal Borrowing and Savings Choices
% We can also now find the optimal borrowing and savings choice, which is, given 
% $c^{\ast}_{1} + b^{\ast} = Z_1$:
%% 
% * $b^{\ast} = Z_1 - \frac{Z_1 + Z_2\cdot \frac{1}{1+r}}{1 + \beta}$
% * $b^{\ast} = \frac{\beta \cdot Z_1 - Z_2\cdot \frac{1}{1+r}}{1 + \beta}$
%% 
% You could also express the above expression as: $b^{\ast} = \frac{\beta \cdot 
% (1+ r) \cdot Z_1 - Z_2}{\left(1 + \beta\right)\cdot\left(1+r\right)}$, which 
% is what we obtained before from the <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% unconstrained problem>. Looking at the optimal borrowing and savings choice, 
% we can see that sometimes the household wants to borrow, sometimes save, depending 
% on the numerator, specifically:
%% 
% * $b^{\ast} >0$ if $\beta \cdot (1+ r) > \frac{Z_2}{Z_1}$
% * $b^{\ast} \le 0$ if $\beta \cdot (1+ r) \le \frac{Z_2}{Z_1}$
%% 
% This tells us that whether a househodl borrows is dependent on the ratio of 
% endowments: $\frac{Z_2}{Z_1}$, and the discount rate multiplied by $1+r$. The 
% preference for future multiplied by the total return to savings must be higher 
% than the ratio of endowment tomorrow versus today for households to want to 
% save. In another word, suppose $\beta \cdot (1+r) > 1$, the household will be 
% willing to save even if there is more endowment tomorrow than today.
%% Computational Solution to the Equality Constrained Problem
% Matlab can solve the optimal choices for us. We can use diff and solve.

beta = 0.95;
z1 = 1;
z2 = 2;
r = 0.05;
syms r c1 c2 mu
% The Lagrangian
lagrangian = (log(c1) + beta*log(c2)) - mu*( c2 + (1+r)*c1 - z1*(1+r) - z2)
% Derivatives
d_lagrangian_c1 = diff(lagrangian, c1);
d_lagrangian_c2 = diff(lagrangian, c2);
d_lagrangian_mu = diff(lagrangian, mu);
GRADIENTmax = [d_lagrangian_c1; d_lagrangian_c2; d_lagrangian_mu]
% Given we have many symbols, type K, L, mu at the end to let matlab know what we are solving for
solu = solve(GRADIENTmax(1)==0, GRADIENTmax(2)==0, GRADIENTmax(3)==0, c1, c2, mu, 'Real', true);
soluC1 = (solu.c1)
soluC2 = (solu.c2)
soluMu = (solu.mu)
%% Fmincon Solution to the Constrained Problem
% We can use fmincon again. What we are doing here is to explicitly solve the 
% initially stated utility maximization problem, with both inequality constraints 
% for consumption. This is not necessary because households would never choose 
% consumption to be zero. Nevertheless, we can still use the fmincon set-up to 
% solve the problem with all its constraints.
%% 
% # $c_2 + (1+r) c_1 \le Z_1 (1+r) + Z_2$
% # $-c_1 < 0$
% # $-c_2 < 0$
%% 
% To useThis is a linear system, the equations above are equal to:
%% 
% # $(1) c_2 + (1+r) c_1 \le Z_1(1+r) + Z_2$
% # $(0) c_2 + (-1) c_2 < 0$
% # $(-1) c_2 + (0) c_2 < 0$
%% 
% Which mean that we have a $A$ matrix and $q$ vector:
%% 
% * $\left[ {\begin{array}{cc} 1 & 1+r \\  0 & -1 \\  -1 & 0 \end{array} } \right] 
% \cdot \left[ {\begin{array}{c} c_2 \\ c_1 \end{array} } \right] \le \left[ {\begin{array}{c} 
% Z_1(1+r) + Z_2 \\ 0 \\ 0 \end{array} } \right]$
%% 
% Now we can set up the inputs for fmincon

% Parameters
beta = 0.90;
z1 = 1;
z2 = 2;
r = 0.05;

% Write down the objective function, we will define it as a function handle, negative utility for minimization
U_neg = @(x) -1*(log(x(2)) + beta*log(x(1)));
% Constraint derived above
A = [1,1+r;0,-1;-1,0];
q = [(z1*(1+r) + z2);0;0];
%% 
% Now call fminunc to solve

c_init = [0.5,0.5]; % starting value to search for optimal choice
% U_neg_num = matlabFunction(subs(U_neg, {beta, z1, z2, r}, {beta_num, z1_num, z2_num, r_num}));
[c_opti,U_neg_at_c_opti] = fmincon(U_neg, c_init, A, q);
c2Opti = c_opti(1);
c1Opti = c_opti(2);
UatCOpti = -1*U_neg_at_c_opti;
disp(table(c1Opti, c2Opti, UatCOpti));
%% 
% Note that consumption in the two periods are similar. Households generally 
% want to smooth consumption over time given their differential endowments in 
% each period.