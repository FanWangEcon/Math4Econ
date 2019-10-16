%% *Firm's Profit Maximization Problem over Outputs, Marginal Costs and Profits given Constant Returns to Scale*
% <https://fanwangecon.github.io/Math4Econ/ *Back to Fan's Math for Economist 
% Table of Content*>
% 
% We have already solved the firm's maximization problem before given decreasing 
% return to scale: <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>. 
% We have also solved the constrained profit maximization or cost minimization 
% problem as well: <https://fanwangecon.github.io/Math4Econ/optimization_application/profit_maximize.html 
% Profit Maximize and Cost Minimize>.
%% What is the Profit of the firm at Constrained Optimal Choices?
% We derived the optimal constrained $K$ and $L$ equations here: <https://fanwangecon.github.io/Math4Econ/optimization_application/profit_maximize.html 
% Profit Maximize and Cost Minimize>. The constrained profit equation given, $p,q,w,r$, 
% is:
%% 
% * $\Pi^{*\text{cost minimize}}(p,q,w,r) = p \cdot q - w \cdot L^*(w,r,q) - 
% r \cdot K^*(w,r,q)$
%% Profit Maximization and Marginal Cost
% Imagine a firm is now trying to decide how much to produce, given our cost 
% minimization problem, now rather than thinking about the firm directly choosing 
% $K$ and $L$ to maximize profit, we can think of the marginal cost and marginal 
% profit of the firm as $q$ changes for the firm. If the firm can choose $q$, 
% it will want to choose the $q$ that maximizes profit.
%% 
% * $\max_{q} p \cdot q - w \cdot L^*(w,r,q) - r \cdot K^*(w,r,q)$
%% 
% The solution to this problem has to be the same as the problem we solved earlier 
% where we directly chose $K$ and $L$, but now when formulated this way, we can 
% think about the marginal cost and marginal revenue for the firm when $q$ changes:
%% 
% * $\text{MC(w,r)} = \frac{\partial (w \cdot L^*(w,r,q) + r \cdot K^*(w,r,q))}{\partial 
% q}$
% * $\text{MR}(w,r) = p$
%% 
% Marginal revenue is of course constant at $p$ and marginal cost is the derivative 
% of the cost minimizing $L$ and $K$ choices multiplied by respective prices with 
% respect to $q$. Note we drived previously that these are functions of $q$. Together 
% with what we derived here: <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>, 
% the Cobb-Douglas Production function firm's problem has given us on the return 
% side: marginal productivity of capital, marginal productivity of labor, and 
% marginal revenue. On the cost side: marginal cost of capital, marginal cost 
% of labor, marginal cost of additional output (given cost minimization). These 
% six marginal ideas are crucial to any firm's problem, the specific functional 
% forms differ depending on our production function specifications, but formulating 
% how firms operate with these marginal ideas is at the heart of economic analysis. 
%% Constant Return to Scale
% In our previous exercise decreasing return to scale, <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>, 
% firms chose optimal $K$ and $L$ to maximize profit. We showed that the log linearized 
% coefficient matrix is not full rank and invertible with constant return to scale, 
% and hence firms did not have unconstrained profit maximizing $K$ and $L$ choices. 
% Why is that?
% 
% Formulating the problem with marginal cost and marginal revenue helps us to 
% understand what is going on. 
% 
% It turns out that if $\alpha + \beta = 1$, that is, the firm has constant 
% return to scale (CRS)--the elasticities of inputs sum up to 1--the cost minimizing 
% optimal $K$ and $L$ choices are *linear *in terms of $q$. The equations we derived 
% in <https://fanwangecon.github.io/Math4Econ/optimization_application/profit_maximize.html 
% Profit Maximize and Cost Minimize>, become, with CRS:
%% 
% * $K^*(w,r,q) = q\cdot \left\{\frac{1}{A} \cdot \left[ \frac{\alpha}{1-\alpha}\cdot\frac{w}{r} 
% \right]^{1-\alpha} \right\}$
% * $L^*(w,r,q) = q\cdot \left\{\frac{1}{A} \cdot \left[ \frac{\alpha}{1-\alpha}\cdot\frac{w}{r} 
% \right]^{-\alpha} \right\}$
%% 
% These equations mean that the marginal cost of producing one more unit of 
% $q$, given CRS, is not impacted by $q$, hence, it is a constant (determined 
% by $A,\alpha, w,r$):
%% 
% * $\text{MC(w,r)} = r\cdot\left\{\frac{1}{A} \cdot \left[ \frac{\alpha}{1-\alpha}\cdot\frac{w}{r} 
% \right]^{1-\alpha} \right\} + w\cdot\left\{\frac{1}{A} \cdot \left[ \frac{\alpha}{1-\alpha}\cdot\frac{w}{r} 
% \right]^{-\alpha} \right\}$
%% 
% With CRS, this means that if a firm makes $q=1$, the cost  would be $\text{MC(w,r)}$, 
% if the firm makes $q=10$, the marginal cost for making the 10th good, given 
% that the firm is cost minimizing by choosing optimal bundle of capital and labor, 
% is just $\text{MC(w,r)}$, and the total cost is also $10\cdot\text{MC(w,r)}$.
%% When will the Firm produce, and what is its Profit?
% With decreasing return to scale, for any prices, there will be profit maximizing 
% $K$ and $L$ choices that lead to some profit maximizing output, as shown here: 
% <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm Maximization Problem with Capital and Labor (Decreasing Return to Scale)>. 
% 
% With CRS:
%% 
% * if $p<\text{MC}(w,r)$, the firm does not produce, supply is perfectly inelastic
% * if $p > \text{MC}(w,r)$, the firm produces infinity, every additional unit 
% brings $p-\text{MC(w,r)}$ unit of profit, so the firm would want to produce 
% up to infinity
% * if $p = \text{MC}(w,r)$. There is no profit, but there is also no loss. 
% Households can also produce any amount, because there is nothing lost from producing. 
%% 
% So the firm makes a profit when: $p > \text{MC}(w,r)$, 
% 
% Given perfect competition, firms do not have pricing power, and take $p$ as 
% given, at equilibrium,$p = \text{MC}(w,r)$. With CRS and perfect competition, 
% firms will not make a profit. The fact that marginal cost is constant and profit 
% is linear in $q$ lead to this result. 
% 
% % 
%