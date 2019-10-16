%% Derivative Definition and Rules
% *back to *<https://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,  *<https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or *<https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*>* Repositories*
%% Definition
% (SB) Let $(x_0, f(x_0))$ be a point on te graph of $y=f(x)$.
% 
% The *derivative* of $f$ at $x_0$ is  the slope of the tangent line to the 
% graph of $f$ at $(x_0, f(x_0))$.
% 
% There are some common ways of denoting derivative of funtion $f$ at $x_0$:
%% 
% * $f'(x_0)$
% * $\frac{df}{dx} (x_0)$
% * $\frac{dy}{dx} (x_0)$
% * $f_x(x_0)$: this is popular in economics
%% 
% We write this analyticaly as:
% 
% $$f'(x_0) = \lim_{h\rightarrow 0} \frac{f(x_0 + h) - f(x_0)}{h}$$
% 
% If this limit exists, then the function $f$ is *differentiable* at $x_0$.
% 
% We will use this formula to derive first order taylor approximation. And this 
% will also appear when we derive the formula for point elasticity.
%% Derivative Rules--Constant Rule
% given constant $k$,:
%% 
% * $f(x) = a\cdot x$
% * $f'(x_0)=a$

syms x a
f(x, a) = a*x
diff_f_k = diff(f,x)
%% Derivative Rules--Power Rule (Polynomial Rule)
% (SB) For any positive integer $k$ (or real number $k$), the derivative of 
% $f(x)=x^k$ at $x_0$ is:
%% 
% * $f(x)=x^k$
% * $f'(x_0)=k\cdot x_0^{k-1}$

syms x a k
f(x, a, k) = a*x^k
diff_f_k = diff(f,x)
%% Derivative Rules--Chain Rule
%% 
% * $f(x)=p(q(x))$
% * $f'(x_0)=p'(q(x_0))\cdot q'(x_0)$

syms x a k
f(x, a, k) = (a*x)^k
diff_f_k = diff(f,x)
%% Derivative Rules--Sum (and difference) Rule
% Given functions $p$ and $q$ that are differentiable at $x$, then:
%% 
% * $f(x) = p(x) + q(x)$
% * $f'(x) = p'(x) + q'(x)$

syms x a b c d
f(x, a, b, c, d) = a*x^b + c*x^d
diff_f_k = diff(f,x)
%% Derivative Rules--Product Rule
% Given functions $p$ and $q$ that are differentiable at $x$, then:
%% 
% * $f(x) = p(x) \cdot q(x)$
% * $f'(x) = p'(x)\cdot q(x) + p(x) \cdot q'(x)$

syms x a b c d
f(x, a, b, c) = (a*x^b)*(c*x^d)
diff_f_k = diff(f,x)
%% Derivative Rules--Quotient Rule
% Given functions $p$ and $q$ that are differentiable at $x$, then:
%% 
% * $f(x) = \frac{p(x)}{q(x)}$
% * $f'(x) = \frac{p'(x)\cdot q(x)  - p(x) \cdot q'(x) }{ (q(x)) ^2 }$
%% 
% Note that the quotient rule is based on the product rule, because:
%% 
% * $f(x) = \frac{p(x)}{q(x)}=p(x) \cdot \frac{1}{q(x)}$
%% 
% So you can derive the quotient rule formula based on the product rule where 
% the first term is $p(x)$ and the second term is $\frac{1}{q(x)}$.

syms x a b c d
f(x, a, b, c) = (a*x^b)/(c*x^d)
diff_f_k = diff(f,x)
%% Derivative Rules--Exponential 
% We use exponential functions in economnics a lot:
%% 
% * $f(x) = \exp(a\cdot x)$
% * $f'(x) = a\cdot \exp(a \cdot x)$

syms x a
f(x, a) = exp(a*x)
diff_f_k = diff(f,x)
%% 
% This is a special case of any power function
%% 
% * $f(x) = c^{a\cdot x}$
% * $f'(x) = a \cdot (\log{c}) \cdot c^{a \cdot x}$
%% 
% note that $log(exp(c)) = c$

syms x a c
f(x, a, c) = c^(a*x)
diff_f_k = diff(f,x)
%% Derivative Rules--Log 
% We use Log functions in economnics a lot:
%% 
% * $f(x) = \log(a \cdot x)$
% * $f'(x) = \frac{1}{x}$
%% 
% note that the c cancels out.

syms x a
f(x, a) = log(a*x)
diff_f_k = diff(f,x)