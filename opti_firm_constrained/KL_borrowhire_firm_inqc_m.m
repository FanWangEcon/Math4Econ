%% *Borrowing Constrained Firm's Profit Maximization Problem with Cobb Douglas Production Function*
% *back to *<https://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,  *<https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or *<https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*>* Repositories*
% 
% In this problem, we solve the constrained firm's profit maximization problem 
% with decreasing returns to scale. This continues from the unconstrained profit 
% maximization problem from <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm's Profit Maximization Problem with Cobb Douglas Production Function (Decreasing 
% Returns to Scale)>.
%% Firm and Capital and Labor
% The problem is the same as before, the profit maximization problem is:
%% 
% * $\max_{K, L} \left( p\cdot A\cdot K^{\alpha}\cdot L^{\beta}-r\cdot K-w\cdot   
% L \right)$
%% 
% The constraint is such that the firm can not borrow more than $\bar{K}$
%% 
% * $K\le \bar{K}$
%% 
% To find optimal choices, we will assume that $\alpha + \beta < 1$
%% Lagrangian and First Order Conditions
% $$\mathcal{L} = \left( p\cdot A\cdot K^{\alpha}\cdot L^{\beta}-r\cdot K-w\cdot 
% L \right) - \lambda \left( K - \bar{K}\right)$$
%% 
% * $\frac{\partial\mathcal{L}}{\partial K}: \alpha\cdot p\cdot A\cdot K^{\alpha-1}\cdot   
% L^{\beta}-r = \lambda$
% * $\frac{\partial\mathcal{L}}{\partial L}: \beta\cdot p\cdot A\cdot K^{\alpha}\cdot   
% L^{\beta-1}-w = \lambda$
% * $\lambda \left( K - \bar{K}\right) = 0$
% * $\lambda \ge 0$
% * $K < \bar{K}$
%% 
% If the optimal unconstrained capital choice is less than $\bar{K}$, then the 
% inequality constraint can not impact optimal choices. The inequality constraint 
% should disappear from the lagrangian, which is achieved with $\lambda=0$.
% 
% If the optimal constrained capital choice would have been greater than $\bar{K}$, 
% then the constraint is binding, in the sense that the $\bar{K}$ bound will limit 
% the firm from borrowing optimally. The firm will borrow as much as it can so 
% that $K = \bar{K}$. Since $K-\bar{K}=0$, $\lambda \ge 0$. Note that the larger  
% $\lambda$ is, the greater the gap between marginal productivity and marginal 
% cost. 
%% Solving for Different Cases
% When faced with inequality constrained problems, we have to solve the problem 
% in different possible cases in which different combinations of the inequality 
% constraints present would be binding. Then we compare across cases to find the 
% case that maximized the objective. 
% 
% Our problem here is simpler, we only have two cases: 
%% 
% # The inequality constraint does not bind, which means we can use the optimal 
% unconstrained capital and labor choices we found previously in <https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html 
% Firm's Profit Maximization Problem with Cobb Douglas Production Function (Decreasing 
% Returns to Scale)>.
% # The inequality constraint does bind for capital, which means we solve for 
% optimal labor choice given fixed level of capital. This is exactly what we did 
% in <https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html 
% Firm's Profit Maximization Problem and Optimal Capital Choice>, except there 
% we solve for optimal capital fixing labor. Now we need to solve for optimal 
% labor fixing capital at the constraint. 
%% Solution
% With _con_ denoting constrained, _unc_ denoting unconstrained, we have: 
%% 
% * $K^{\text{con}} = \begin{cases} K^{\text{unc}} \text{, if } K^{\text{unc}} 
% < \bar{K}\\ \bar{K} \text{, otherwise}\end{cases}$
% * $L^{\text{con}} = \begin{cases} L^{\text{unc}} \text{, if } K^{\text{unc}} 
% < \bar{K}\\ \arg\max_{L} \Pi\left(\bar{K}, L; r, w\right) \text{, otherwise}\end{cases}$