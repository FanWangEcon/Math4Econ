%% *Investments in Risky and Safe Assets, States of the World*
% <https://fanwangecon.github.io/Math4Econ/ *Back to Fan's Math for Economist 
% Table of Content*>
%% *Uncertainty*
% Previously, we have solved the <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% household savings problem without uncertainty>. Now, suppose there are 2 states 
% of the world tomorrow, in one state of the world, the economy is booming, the 
% other not so great. 
% 
% If you deposited money into a savings account at Bank of America, your earnings 
% in the good and bad states are likely to be very similar. Let's assume they 
% are actually the same.
% 
% If you bought stocks, you might make a lot of money when the economy is booming, 
% but lose money when the economy is not doing well. Let's assume you make higher 
% return in the good state compared to return to savings at Bank of America, but 
% you loss all investments in the bad state.
%% Differential Returns Depending on the State of the World
% Let us formalize things. A household can save $BOA$ in safe asset and for 
% each dollar saved, get $1+r$ dollar tomorrow. Alternatively, a household can 
% invest $DOW#$ in risky asset. In the good state of the world tomorrow, the household 
% will receive $1+r_h$ back for each dollar invested. In the bad state of the 
% world tomorrow, the household will receive nothing--lose all. The probability 
% that the next period is good is $p_h$, and the probability that the next period 
% is bad is $1-p_h$.
% 
% Note that:
%% 
% * Households know what interest they will earn in the booming and non-booming 
% economy
% * They know the probability that we end in the booming and non-booming economy
% * *Uncertain: *Even if the chance of having the good economy tomorrow is only 
% $p_h = 0.01$, the household does not know in the current period whether for 
% sure tomorrow will be a good or a bad period. 
%% The Two Period Household Protofolio Choice Problem
% Suppose as before that we have $\log$ utility, $\beta$ for the discount factor, 
% $Z_1$ inheritance in the first period, and $Z_2$ inheritance in the second period, 
% what is the maximization problem that households face? (Let $D$ represent $DOW$ 
% investment, and $B$ represent $BOA$ savings.)
% 
% *Utility*
%% 
% * $U = \log(c_1) + \beta \left(p_h \cdot \log (c_{2h}) + (1-p_h) \cdot \log(c_{2l}) 
% \right)$
%% 
% *Budget Period 1*:
%% 
% * $c_1 + D + B= Z_1$
%% 
% *Budget Period 2*: * *
%% 
% * *Good State*: $c_{2h} = Z_2 + B \cdot (1+r) + D \cdot (1 + r_h)$
% * *Bad State*: $c_{2l} = Z_2 + B \cdot (1+r)$
%% 
% As noted, there is no return from risky asset in the bad state. And note that 
% compared to our <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% Two Periods Saving/Borrowing without Shocks>, there are two different consumptions 
% tomorrow now. Only one state of the world will be realized tomorrow, but from 
% today's perspective, we have to consider consumption under both possibilities. 
% Also note that with log utility, households are risk averse.
%% Household Maximization Problem
% Let's use $R = 1+r$ and $R_h = 1 + r_h$
% 
% Our maximziation problem is:
%% 
% * $\max_{D, B } \log(Z_1 - D - B)  + \beta p_h \log\left[Z_2 + B\cdot R + 
% D\cdot R_h \right] + \beta (1-p_h) \log\left[Z_2 + B\cdot R\right]$
%% 
% Different combinations of $D$ and $B$ have these interpretations, for example:
%% 
% # If $D>0$ and$B>0$, that means you are saving in both the risky and safe 
% assets at the same time. This is the classic portofolio choice problem. You 
% want some optimal composition of risky and safe return assets. Some fraction 
% of period 1 endowment (if it is higher than period 2 endowment) into Bank of 
% America to have safe return, some fraction investin stocks, and consume the 
% remaining fraction
% # If $D>0$ and $B<0$, return in DOW so attractive that you borrow from BOA 
% to finance your stock purchases.
% # If $D=0$ and $B<0$, borrow from BOA to increase consumption today, but no 
% risky investments.
%% 
% Note that we given we allow $D$ and $B$ to be positive or negative. This means 
% that potentially, you can also borrow $D$.
%% First Order Conditions
% We can take advantage of matlab's symbolic tool box as before, we can type 
% up the utility function:

syms Z1 Z2 D B beta ph R Rh
U = log(Z1 - D - B)  + beta * ph * log(Z2 + B*(R) + D*(Rh)) + beta*(1-ph)*log(Z2 + B*R )
%% 
% Now we can take derivative of $U$ with respect to $D$ and $B$:

% MUC_{t} = E(MUC_{t+1}
diff_U_B = diff(U, B)
diff_U_D = diff(U, D)
%% 
% For optimal choice, we want to set the two first order conditions to be equal 
% to zero. 
%% Marginal Utility and Marginal Returns
% Partial derivative of $U$ with respect to $B$ (*diff_U_B*) has three terms: 
%% 
% # $MUC_{1}$ = marginal utility of consumption $t=1$ (today)
% # $(MUC_{2h} \cdot R \cdot \beta \cdot p_h)$ = (marginal utility of consumption 
% t=2 in *boom*) x (marginal return to *safe asset*) x (time discount) x (probability 
% of *good* state)
% # $(MUC_{2l} \cdot R \cdot \beta \cdot (1-p_h))$ = (marginal utility of consumption 
% t=2 in *bust*) x (marginal return to *safe asset*) x (time discount) x (probability 
% of *bad* state)
%% 
% Note that the sum of the second and third terms is: 
%% 
% * _*Expected*_ return to saving safe asset: $(MUC_{2h} \cdot R \cdot \beta 
% \cdot p_h)+(MUC_{2l} \cdot R \cdot \beta \cdot (1-p_h))$
%% 
% Partial derivative of $U$ with respect to $D$ (*diff_U_D*) has two terms: 
%% 
% # $MUC_{1}$ = marginal utility of consumption $t=1$ (today)
% # $(MUC_{2h} \cdot R_h \cdot \beta \cdot p_h)$ = (marginal utility of consumption 
% t=2 in *boom*) x (marginal return to *risky asset*) x (time discount) x (probability 
% of *good* state)
%% 
% Note that the second term is the expected return to the risky asset.
%% Solving for Optimal Choices--Analytical Solution
% Using the symbolic toolbox, we now show the analytical solution to the problem 
% as a function of the parameters

% We have two first order conditions, set both to 0, solve for D and B
solu_DB = solve(diff_U_D==0, diff_U_B==0, D, B)
solu_D = solu_DB.D
solu_B = solu_DB.B
%% Solving for Optimal Chocies--Numerical Parameter Values
% If we have specific values for the parameters, we can find the exact optimal 
% choices. In the exmaple below below, the optimal $B$ choice is negative, and 
% $D$ choice is positive. This means the household is borrowing from Bank of America 
% to finance investment in DOW. 
% 
% Is there an _upper bound_ to this borrowing? Yes, the household knows that 
% DOW investment will have no return in the bad state of the world, but BOA loans 
% have to be paid bad in both the good and bad state. The household has $Z_2$ 
% endowment in the next period for both good and bad states. The household will 
% never borrow so much that he has no money left for consumption in the bad state 
% after repaying debts, which he is required to given our model specifications. 
% Specifically, the household will at most borrow up to $\frac{Z_2}{(1+r)}$. If 
% the household borrows more than this, then upon arrival in the bad state of 
% the world (regardless how small the probability of bad state is as long as it 
% is greater than zero), the household will have equal or below zero resources 
% left for consumption, where utility is not defined. This is also called the 
% _*natural borrowing constraint*_.

% Let's only have D and B as symbols
syms D B 
Z1 = 10;
Z2 = 5;
beta = 1;
ph = 0.7;
R = 1;
Rh = 1.5;
Rl = 0.5;
% Retype what we had before:
U = log(Z1 - D - B)  + beta * ph * log(Z2 + B*(R) + D*(Rh)) + beta*(1-ph)*log(Z2 + B*R + D*(Rl));
% Our problem is solved using one line:
solu_DB_numeric = solve(diff(U, D)==0, diff(U, B)==0, D, B);
solu_D_numeric = double(solu_DB_numeric.D)
solu_B_numeric = double(solu_DB_numeric.B)