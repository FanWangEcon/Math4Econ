%% Elasticity and Derivative
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/MEconTools/ *MEconTools*> *Repositories*
%% Demand and Supply
% At price $p_0$, the current price level, the demand and supply of good $x$ 
% ( $x$ could be capital, labor, apples ect) could be written as:
%% 
% * $x_{\text{demand}} = \text{D}(p_0)$
% * $x_{\text{supply}}=\text{S}(p_0)$
%% 
% Note that we solve for the maximization problem of the demander of good $x$ 
% and the supplier of good $x$ at price $p_0$ to find the quantity demanded and 
% quantity supplied at this particular price. We derive the demand and supply 
% curves by solving for quantity demanded and supplied at many prices points and 
% connecting the resulting pairs of price and quantity demanded and supplied in 
% a graph together.
%% How does demand (or supply) respond to a change in price?
% What happens to demand and supply if $p_0$ increases to $p_0 + h$?
%% 
% * $x_\text{d} = \text{D}(p_0 + h)$
% * $x_\text{s} = \text{S}(p_0 + h)$
%% 
% With normal goods, we expect that demand for $x$ decreases when price increases, 
% and supply for $x$ increases when price increases.
%% How sensitive are demands to price changes?
% If when movie ticket doubles in price, the number of theater goers goes down 
% just a little bit, perhaps theater chains could make a lot more money by raising 
% price. In this case, price has a hard time shifting demand, hence demand is 
% fairly inelastic with respect to price. If orange juice buyers find apple juice 
% to be largely substitutable, then if the price of orange juice goes up, demand 
% for orange juice might decrease a lot as consumers switch to apple juice. In 
% this case, price has an easy time shifting demand, hence demand is fairly elastic 
% with repsect to price.
% 
% To avoid thinking about the unit of price and unit of goods, we think of percentage 
% changes: what is the *percent* change in quantity of goods demanded given a 
% *percent* change in the price of that good?
%% 
% * $\frac{\text{Percent change in demand given } h \text{ change  in price} 
% }{ \text{Percent change in price when price increase by } h }$
%% 
% The price elasticity of demand at price $p_0$ given $h$ increase in price 
% is:
%% 
% * $\frac{\left( \frac{\text{D}(p_0 + h) - \text{D}(p_0)}{\text{D}(p_0)} \right)}{ 
% \left( \frac{p_0 + h - p_0}{p_0} \right)} = \left( \frac{\text{D}(p_0 + h) - 
% \text{D}(p_0)}{\text{D}(p_0)} \right) \cdot \left( \frac{p_0}{h} \right)$
%% 
% If we know how to solve for the optimal demand, we can calculate this at every 
% point $x_0$ for small $h$.
%% Point Elasticity and Derivative
% If you solve for the elasticity formula above, you will find that as $h$ decreases, 
% the price elasticity of demand at $p_0$ converges to a number. The number that 
% the elasticity formula converges to is the *point price elasticity of demand:*
%% 
% * $\text{DemandElasticity} (p_0) =\lim_{ h \rightarrow 0} \left( \left( \frac{\text{D}(p_0 
% + h) - \text{D}(p_0)}{\text{D}(p_0)} \right) \cdot \left( \frac{p_0}{h} \right) 
% \right)$
%% 
% Some of the terms in the fomrula do not include $h$, we can move them outside 
% of the $\lim$ symbol
%% 
% * $\text{DemandElasticity} (p_0) = \left( \lim_{ h \rightarrow 0}  \left( 
% \frac{\text{D}(p_0 + h) - \text{D}(p_0)}{h} \right) \right) \cdot \frac{p_0}{\text{D} 
% (p_0)}$
%% 
% This should look very familiary, it is exactly the formula for derivative 
% of the demand funtion at $p_0$. 
%% 
% * $\text{DemandElasticity} (p_0) = \text{D}'(p_0) \cdot \frac{p_0}{\text{D} 
% (p_0)}$
%% 
% This formula applies to all price $p$
%% 
% * $\text{DemandElasticity} (p_0) = \text{D}'(p) \cdot \frac{p}{\text{D} (p)}$
%% 
% If we can derive the demand function, and it is differentiable over the domain 
% of $p$, then we can solve analytically for demand elasticity as a function of 
% $p$. 
%% *Inelastic, elastic and unit elastic*
% If the elasticity is $0$, that means demand is fixed and does not change with 
% price. If the demand elasticity obtained above is between $0$ and $-1$, the 
% good is inelastic with respect to price. If the price elasticity is less than 
% $-1$, the good is elastic with respect to price. At $1$, the good is unit elastic:
%% 
% * $\begin{cases}  - 1 <  \text{D}'(p) \cdot \frac{p}{\text{D} (p)} < 0 \text{, 
% inelastic} \\  \text{D}'(p) \cdot \frac{p}{\text{D} (p)} = -1 \text{ , unit 
% elastic} \\ \text{D}'(p) \cdot \frac{p}{\text{D} (p)} < -1 \text{ , elastic} 
% \\ \end{cases}$
%% 
% *Theorem 3.6*: If a good is inelastic, an increasein price leads to an increase 
% in total expenditure, for an elastic good, an increase in price leads to a decrease 
% in total expenditures.
% 
%