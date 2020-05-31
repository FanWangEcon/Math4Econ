%% Differential and Marginal Product
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*> *Repositories*
% 
% In economics papers, we often see these symbols: $\Delta$, $d$, $\partial$
% 
% $\Delta{y}$ and $\Delta{x}$ are changes along the function graph: given some 
% $x_0$: 
%% 
% * $\Delta{y} = f(x_0 + \Delta{x}) - f(x_0)$
%% 
% $\text{d}y$ and $\text{d}x$ are *differentials*, which are, at each point 
% $(x, f(x))$, the changes in y for the tangent line given a change in $x$: 
%% 
% * $\text{d}{x} = \Delta{x}$
% * $\text{d}y = f'(x_0) \cdot \text{d}x$
%% 
% we have seen that the tangent line to $f(x)$ at $x_0$ approximates the function 
% $f(x)$ around $x_0$ (and is identical at $x_0$), so approximately, for small 
% $\Delta{x}$:
%% 
% * $\Delta{y} \approx \text{d} y$
%% MPL for Cobb-Douglas
% With this Cobb-Douglas production function:
% 
% $$F(K,L) = K^{\alpha} \cdot L^{1-\alpha}$$
% 
% As derived earlier, the derivative with respect to labor is (MPL=marginal 
% product of labor):
% 
% $$\text{MPL}(K,L) = (1-\alpha) \cdot K^{\alpha} \cdot L^{-\alpha}$$
%% Interpreting MPL
% In the above problem, suppose $K_0=1$ and $L_0=1$, and $\alpha=0.5$. Without 
% a calculator, we can calculate what output and marginal product of labor is:
% 
% $$F(K_0=1, L_0=1) = 1$$
% 
% $$\text{MPL}(K_0=1, L_0=1) = 0.5$$
% 
% This means the total output with one unit of worker and one unit of capital 
% is $1$.
% 
% Becareful about interpreting the $\text{MPL}$ term (we are treating it as 
% a function of continuous $L$, some define MPL in terms of discrete increases 
% in $L$), it is a derivative, which as we have discussed is the slope of the 
% tangent line to the production function line with fixed $K$ and $L$ along the 
% $\text{x-axis}$. Which means if you increase labor by a infinitestimally small 
% amount when existing $K=1$ and $L=1$, the *slope* of output increase will be 
% $0.5$. The actual output increase is that infinitestimally small increase in 
% labor multiplied by $0.5$. It is perhaps difficult to conceptualize what it 
% means to multiply something infinitely small by another number. To make the 
% idea more conconcret, we will think using $\text{MPL}$ to approximate the increase 
% in output given a small increase in labor.
%% Exact Output Calculated with Matlab
% Continuing with the two numbers we can calculate without a calculator:
% 
% $$F(K_0=1, L_0=1) = 1$$
% 
% $$\text{MPL}(K_0=1, L_0=1) = 0.5$$
% 
% Suppose we are interested in the increase in output when labor increases from 
% $L_0=1$ to $L_1=1.03$, what is the new output? What is the increase in output? 
% (You can think of this as increasing the number of workers by 3 percentage points.)
% 
% _*Exact* Solution_*:* We can directly calculate this, very hard by hand, but 
% using matlab:

% Define parameters, fixed K0
alpha = 0.5;
K0 = 1;
% Define equation with L is unknown
syms L
f(L) = K0^(alpha)*L^(1-alpha);
% two different L levels
L0 = 1;
L1 = 1.03;
% Fill the L0 and L1 values into the symbolic function
YL0 = subs(f, L0)
YL1 = subs(f, L1)
% Take difference
increaseOutput = YL1 - YL0
% Turn symbolic answer to double (easier to read), increase in output
increaseOutput = double(increaseOutput)
% new level of output
newLevelOutput = double(YL1)
%% *Approximate Output Increase with Derivative (MPL)*
% Remember as we have seen, the slope of the tangent line at $L_0$ is similar 
% to the slope of the line between $L_0+h$ and $L_0$, from the definition of derivative, 
% for $h$ small, the following should be true:
%% 
% * $F_{L}'(K_0, L_0) \approx \frac{F(K_0, L_0+h)-F(K_0, L_0)}{h}$
%% 
% Just move the $h$ from the right to the left, the *increase in output* is 
% _approximately_:
%% 
% * $F(K_0, L_0+h)-F(K_0, L_0) \approx F_{L}'(K_0, L_0) \cdot h$
%% 
% Furthermore, the *level of output* is _approximately_:
%% 
% * $F(K_0, L_0+h) \approx F(K_0, L_0) + F_{L}'(K_0, L_0) \cdot h$
%% 
% In our case above, we can now approximate output levels using the two numbers 
% we calculated by hand, with $K_0 =1$ and $L_0=1$:
%% 
% * $F(K_0, L_0+h) \approx F(K_0, L_0) + F_{L}'(K_0, L_0) \cdot h = 1 + 0.5 
% \cdot h$
%% 
% Now with $\mathbf{1 + 0.5 \cdot h}$, that is something we can use very easily, 
% back to 1st grade math. We calculated previously that if $h=0.03$, the exact 
% new level of output is $1.0149$:

newLevelOutput
%% 
% What is our approximated increase that we can calculate by hand? It is $1.015$

approximatedLevelOutput = 1 + 0.5 * 0.03
%% 
% These are almost identical.
%% First Order Taylor Polynomial Approximation
% What we have just done is called *First Order Taylor Polynomial Approximation*, 
% which can be written more generally as:
%% 
% * $F(X_0+h) \approx F(X_0) + F'(X_0) \cdot h$
%% 
% Often you see this written as below, these are equivalent:
%% 
% * $f(x)  \approx f(a) + f'(a) \cdot (x-a)$
%% 
% This is just another way to write down the differential formula described 
% at the beginning
%% 
% * $F( X_0 + \Delta{x}) - F(X_0) = \Delta{Y} \approx  \text{d}{Y} =  F'(X_0) 
% \cdot \text{d}{X}$
%% 
% When solving economics problems, we often end up with functions that takes 
% too much time to evaluate. To save time, we often approximate functions by the 
% first order taylor approximation. We do this when we are solving for points 
% around a point where we have already evaluated (a point where perhaps it is 
% easier to evaluate the function). We just demonstrated this idea using the MPL 
% example here, where we used something we can approximate using 1st grade algebra 
% something that we would need a calculator (matlab) to compute accurately for 
% us.
% 
% Analyze the functional form of MPL, what accurate is the 1st order taylor 
% approximation or differential approximation for the same $h$ increase in $L$ 
% if existing $L$ is high vs if it is low?