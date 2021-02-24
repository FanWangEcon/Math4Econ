%% Natural Logarithm and Exponential
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/MEconTools/ *MEconTools*> *Repositories*
%% 
% We use log for log utility in our <https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html 
% household maximization problems>, and we use exponential functions with other 
% bases for <https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html 
% production functions>. 
% 
% _See also_: <https://fanwangecon.github.io/Math4Econ/explog/exponential.html 
% Exponential and Infinitely Compounding Interest Rate>.
%% Log and Exponential
% If the natural log of $x$ is $y$ (in economics we generally just write ln 
% and log interchangeably, becareful though, google thinks function log means 
% log with base 10, matlab thinks function log means base e, you will get different 
% numbers typing in log(10) in google and matlab).
%% 
% * $\ln(x) = y$
%% 
% then
%% 
% * $e^y = x$
%% 
% where <https://en.wikipedia.org/wiki/E_(mathematical_constant) e is Euler's 
% number>. Intuitively, $ln(x)$ is asking what exponent $y$ of base $e$ is needed 
% for $e^y$ to be equal to $x$. When $x$ is consumption, the log utility of consumption 
% is in some sense the number of $e$ terms needed to be multiplied together to 
% equal to $c$. 
% 
% We can also write:
%% 
% * $e^x = \exp(x)$, writing $\exp(x)$ is a little easier to read, means just 
% $e$ to the power of $x$
%% 
% because of this:
%% 
% * since $e^0 = 1$, $\log(1) = 0$
% * since $e^1 \approx 2.71828$, $\log(2.71828) \approx 1$
%% 
% The natural log is just the inverse of the exponential function. We use log 
% to linearize exponential functions, which allows us to do regressions afterwards 
% for example.
%% Log Rules
% Suppose we have: $\log \left(\frac{\exp(A + \epsilon)\cdot a^{\alpha}\cdot 
% b^{\beta}}{c^{\theta}\cdot d^{\phi}} \right)$
% 
% This looks complicated, but because there is log, we can take the equation 
% apart:
% 
% $$\log \left(\frac{\exp(A + \epsilon)\cdot a^{\alpha}\cdot b^{\beta}}{c^{\theta}\cdot 
% d^{\phi}} \right) = (A+\epsilon) + \alpha \cdot \log(a) + \beta \cdot \log(b) 
% - \theta \cdot \log( c) - \phi \cdot \log(d)$$
% 
% Generally (:
%% 
% * $\log(\exp(A))=A$
% * $\log(x^\alpha) = \alpha\cdot\log(x)$
% * $\log(x \cdot y) = \log(x) + \log(y)$
% * $\log(\frac{x}{y}) = \log(x) - \log(y)$
%% Why does $\log(x \cdot y) = \log(x) + \log(y)$?
% Why is the log of the product of two numbers the same as the sum of the log 
% of each of the two numbers? Intuitively, because we can write $x\cdot y$ as 
% the exponential of a sum: when $e^a \cdot e^b$, even though it's multiplication, 
% it is also just $e^{a+b}$, the exponential of a sum.
%% 
% * *Rule*: $\log(x \cdot y) = \log(x) + \log(y)$
%% 
% We can write separately what each term equals to as:
%% 
% # $\log(x\cdot y ) = z$
% # $\log(x) = z_x$
% # $\log(y) = z_y$
%% 
% By definition, for each of the three terms above:
%% 
% # $x\cdot y = \exp(z)$
% # $x = \exp(z_x)$
% # $y = \exp(z_y)$
%% 
% So:
%% 
% * $\log(x \cdot y) = \log( \exp(z_x) \cdot \exp(z_y))$
%% 
% Given that: $e^a \cdot e^b = e^{a+b}$, and $\log(\exp(x))=x$:
%% 
% * $\log(x \cdot y) = \log( \exp(z_x) \cdot \exp(z_y)) = \log(\exp(z_x + z_y)) 
% = (z_x + z_y)$
%% 
% Hence:
%% 
% * $\log(x\cdot y ) = z = (z_x + z_y) = \log(x) + \log(y)$
%% Why does $\log(x^a) = a\cdot \log(x)$?
% Why is the log of an exponential term equal to the power times the log of 
% the base of the exponential? 
% 
% We start with:
%% 
% * $\log(x^a) = z$
%% 
% Proceed:
%% 
% # $\log(x^a) = z$
% # $x^a = e^z$
% # $x = e^{\frac{z}{a}}$
% # $\log(x) = \frac{z}{a}$
% # $a\cdot\log(x) = z$
%% For Variables that Grow, Log difference is close to rate of change
% Suppose that growth rate is $x$ percent per year, after 5 years, the gdp will 
% be:
%% 
% * $Y_{1995} = Y_{1990} \cdot (1 + x)^5$
%% 
% We can take log on both sides:
%% 
% * $\ln (Y_{1995}) = \ln(Y_{1990}) + 5 \cdot \ln (1 + x)$
%% 
% Which says that the difference in GDP between these two years divided by 5 
% is equal to the log of $1$ plus the growth rate.
% 
% Approximately, for $x$ small:
%% 
% * $\frac{\ln (Y_{1995}) - \ln (Y_{1990})}{5} = \ln (1+x) \approx  x$
%% 
% For example:

xVec = linspace(0,0.10,10);
log(1+ xVec)
xVec
%% 
% *Note:* This is a bad approximation if $x$ is large. For example, we know 
% that $\ln(2.718) = \ln(1 + 1.718) \approx 1$ is almost exact. But the approximation 
% here would have said $\ln(1 + 1.718) \approx 1.718$, which is very incorrect.