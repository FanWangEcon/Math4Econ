%% Continuity and Differentiability
% *Back to *<http://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Economist Table of Content*>
% 
% In the real world, households and firms general consume and use discrete units 
% of goods. Households can buy $N$ apples, and firms can hire $M$ numbers of workers. 
% The world is full of discreteness. To derive mathmatical expressions that summarize 
% the aggregate behavior of economic agents, we generally approximate our discrete 
% world with continuous functions. 
%% Definition Continuous
% Visually, "a function is *continuous *if its graph has no breaks" (SB). "The 
% graph of a function cannot have a tangent line at a point of discontinuity"
% 
% This function, for example is not continuous. Note that we can not use both 
% $\le$ and $\ge$, otherwise this would no longer be a function:
%% 
% * $f(x)=\begin{cases} 1 \text{ if } x \ge 0 \\ 0 \text{ if } x < 0 \end{cases}$
%% 
% This is the simplest continuous function
%% 
% * $f(x)=\begin{cases} 1 \text{ if } x \ge 0 \\ 1 \text{ if } x < 0 \end{cases}$
%% 
% The more formal definition of continuity is based on convergence of sequences, 
% which you do not need to remember (SB P32):
%% 
% * Continuous at a *point*: A function $f:D\rightarrow \textbf{R}^1$ is *continuous* 
% at $x_0 \in D$ if for _any_ sequence $\left\{ x_n \right\}$which converges to 
% $x_0$ in $D$, $f(x_n)$ converges to $f(x_0)$.
% * Continuous on a *set*: A function is *continuous on a set *$U \in D$ if 
% it is continuous at every $x \in U$.
% * *Whole function* is continuous: Finally, we say that a function is *continuous* 
% if it is continuous at every point in its domain.
%% 
% Often, if you write down an economic model where functions have discontinuity, 
% you might need to rely on brute-force type solution method to solve for household 
% and firm maximization problems, and can not take advantage of derivatives.
%% Definition Continuously Differentiable
%% 
% * As stated before, if the following limit exists, then the function $f$ is 
% *differentiable* at $x_0$: $f'(x_0) = \lim_{h\rightarrow 0} \frac{f(x_0 + h) 
% - f(x_0)}{h}$
% * $f$ is a *differentiable function*, if "it is differentiable at every point 
% $x_0$ in its domain $D$" (SB P29), which means "its derivative $f'(x)$ is another 
% function of $x$" (SB P32):
% * If $f'(x)$ is a continuous function of $x$, we say that the original function 
% $f$is *continuously differentiable*, or $C^\textbf{1}$
%% 
% The 2 period savings problem involved a utility maximization equation that 
% was continuous over the domain, and that was differentiable everywhere over 
% the domain. The derivative we obtained was also continuous. Hence we were dealing 
% with a continuously differentiable function. With that function, we were able 
% to easily find the optimal savings choice