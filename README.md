[![HitCount](http://hits.dwyl.io/fanwangecon/Math4Econ.svg)](https://github.com/FanWangEcon/Math4Econ)  [![Star](https://img.shields.io/github/stars/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/stargazers) [![Fork](https://img.shields.io/github/forks/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/network/members) [![Star](https://img.shields.io/github/watchers/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/watchers)

This is a work-in-progress [course website](https://fanwangecon.github.io/Math4Econ/) for Mathematics for Economists, produced by [Fan](https://fanwangecon.github.io/). Course covers a limited subset of topics from *Mathematics for Economists* (Simon and Blume 1994), and uses various definitions from the book. Applications focus on two period borrowing and savings problems. Matlab's symbolic toolbox is used throughout.

From [Fan](https://fanwangecon.github.io/)'s other repositories: For dynamic borrowing and savings problems, see [Dynamic Asset Repository](https://fanwangecon.github.io/CodeDynaAsset/); For matlab programming guides, see [Project Reusable Matlab Code](https://fanwangecon.github.io/M4Econ/); For data analysis, see [R Panel Data Code](https://fanwangecon.github.io/R4Econ/) and [Stata Example Code](https://fanwangecon.github.io/Stata4Econ/). See [here](https://github.com/FanWangEcon) for all of [Fan](https://fanwangecon.github.io/)'s public repositories.

Materials are written in matlab livescript files and shown as HTML files. To obtain matlab codes, see [here](docs/gitsetup.md) and [here](docs/gitsetupown.md) for github set up. For HTML files, click on the links below.

Files are from the [Math4Econ](https://github.com/FanWangEcon/Math4Econ) repository. Please contact [FanWangEcon](https://fanwangecon.github.io/) for issues or problems.

[![](https://img.shields.io/github/last-commit/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/commits/master) [![](https://img.shields.io/github/commit-activity/y/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/graphs/commit-activity) [![](https://img.shields.io/github/issues/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/issues) [![](https://img.shields.io/github/issues-pr/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/pulls)

# 1. Basic Calculus and Applications

## 1.1 Basics

1. [Real Number and Intervals](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
    - definition and draw a line
    - **m**: *linspace, line, set(gca, yaxis off), pbaspect*
2. [What is a Function?](https://fanwangecon.github.io/Math4Econ/calconevar/whatisfunction.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/whatisfunction.html)
    - domain, argument, do-domain, image/value, range
    - **m**: *sin, plot, circle  plot*    
3. [Function Notations](https://fanwangecon.github.io/Math4Econ/calconevar/funcnotations.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/funcnotations.html)
    - consistent function naming
4. [Interval Notations and Examples](https://fanwangecon.github.io/Math4Econ/calconevar/interval.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/interval.html)
    - closed, open intervals
5. [Monomial and Polynomial](https://fanwangecon.github.io/Math4Econ/calconevar/polynomial.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/polynomial.html)
    - monomial, polynomial, degree of polynomial
    - **m**: *syms x, f(x) = a + x, fplot(@(x) f(x,a), [x_low, x_high])*    
6. [Local and Global Maximum](https://fanwangecon.github.io/Math4Econ/calconevar/localglobal.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/calconevar/localglobal.html)
    - local and global maximum,
    - **m**: *syms x, f(x) = x - x^2, double(solve(diff(f,x),x)), fplot(f,[x_low, x_high])*

## 1.2 Derivatives

1. [Derivative Definition and Rules](https://fanwangecon.github.io/Math4Econ/derivative/derivative_rules.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_rules_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_rules.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_rules.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative/derivative_rules.html)
    - derivative notations, limit definition, and key rules
    - **m**: *syms, diff*
2. [Continuity and Differentiability](https://fanwangecon.github.io/Math4Econ/derivative/continuous_differentiable.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/continuous_differentiable_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/continuous_differentiable.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/continuous_differentiable.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative/continuous_differentiable.html)
    - Continuous point, set and function, continuously differentiable
3. [Elasticity and Derivative](https://fanwangecon.github.io/Math4Econ/derivative/derivative_elasticity.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_elasticity_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_elasticity.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_elasticity.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative/derivative_elasticity.html)
    - elasticity of demand at price p, given h change in p
    - point elasticity of demand at price p
    - elasticity and the limiting definition of derivative
4. [First Order Taylor Approximation](https://fanwangecon.github.io/Math4Econ/derivative/derivative_MPL_first_order_taylor_approximation.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_MPL_first_order_taylor_approximation_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_MPL_first_order_taylor_approximation.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/derivative_MPL_first_order_taylor_approximation.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative/derivative_MPL_first_order_taylor_approximation.html)
    - differential: change along the tangent line to approximate change in function value
    - first order taylor approximation and the limiting definition of derivative
    - differential approximating marginal productivity of labor
    - **m**: *syms L, f(L) = L^a, sub(f, 1)*
5. [Higher Order Derivatives](https://fanwangecon.github.io/Math4Econ/derivative/second_derivative.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/second_derivative_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/second_derivative.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative/second_derivative.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative/second_derivative.html)
    - Cobb-Douglas Production Function, first and second derivatives
    - Convex and Concave functions
    - **m**: *syms L, f(L) = L^a, diff(diff(f, L),L); fplot, title({'title one' 'subtitle'}) + ylabel({'ylab abc' 'ylab efg'}) + legend{['line a'],['lineb'],, 'Location','NW'}*

## 1.3 Applications--Production Function

1. [Marginal Product of Labor](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_MPL_discrete_workers.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_MPL_discrete_workers_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_MPL_discrete_workers.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_MPL_discrete_workers.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_MPL_discrete_workers.html)
    - marginal product for each additional units of workers given different levels of capital    
    - **m**: *plot, scatter, legend(['k=',num2str(K1)], ['k=',num2str(K1)])*
2. [Derivative of Cobb-Douglas Production Function](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_cobb_douglas.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_cobb_douglas_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_cobb_douglas.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_cobb_douglas.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_cobb_douglas.html)
    - marginal product of labor given different levels of capitals
    - **m**: *syms, diff, fplot*
3. [Derivative Approximation](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_hslope_cobb_douglas.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_hslope_cobb_douglas_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_hslope_cobb_douglas.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/derivative_hslope_cobb_douglas.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_hslope_cobb_douglas.html)
    - marginal product and tangent line
    - **m**: *syms, diff, fplot, lengend{}*

## 1.4 Applications--Demand and Supply

1. [Household's Savings Problem](https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html)
    - edowments today and tomorrow, borrowing and savings, no shocks
    - grid based or analytical solution
    - supply curve of savings (asset)
    - **m**: *max, diff, solve; plot, scatter*
2. [Firm's Borrowing Problem](https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html)
    - profit maximization choosing capital, with labor fixed
    - grid based or analytical solution
    - demand curve of capital (asset)
    - **m**: *max, diff, solve; plot, scatter*

## 1.5 Application--Risky Asset

1. [Risky Assets and Different States of the World](nonlinear/RiskyAsset.html)

# 2. Exponential and Log

1. [Exponential and Infinitely Compounding Interest Rate](https://fanwangecon.github.io/Math4Econ/explog/exponential.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exponential_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exponential.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exponential.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/explog/exponential.html)
    - exponential function and rules: a^b
    - base e exponential, e = 2.71828
    - infinitely compounding interest rate (continuous time)
    - e^r: borrow 1 dollar, given r, meaning r percent interest, e^r is how much to pay back in principle + interests given infinite compounding.
    - **m**: *exp, fplot, double(subs())*
2. [Exponential Function and Log Function](https://fanwangecon.github.io/Math4Econ/explog/exolog.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exolog_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exolog.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/explog/exolog.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/explog/exolog.html)
    - log and natural log (log in matlab base e, log in google base 10)
    - log rules, and why: log(x*y) = log(x) + log(y); log(x^a) = a*log(x)
    - log difference and small rates of change

# 3. Matrix

## 3.1 Basics

1. [Laws of Matrix Algebra](https://fanwangecon.github.io/Math4Econ/matrix_basics/matlab_define_matrix.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matlab_define_matrix_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matlab_define_matrix.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matlab_define_matrix.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_basics/matlab_define_matrix.html)
    - Scalar: Associative + Communtative + Distributive Law Laws
    - Matrix: all apply except A times B != B times A
    - **m**: *transpose*
2. [Matrix Addition and Multiplication](https://fanwangecon.github.io/Math4Econ/matrix_basics/matrix_algebra_rules.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_algebra_rules_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_algebra_rules.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_algebra_rules.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_basics/matrix_algebra_rules.html)
    - scalar and matrix
    - matrix dimensions
    - **m**: *dot product*
3. [Creating Matrixes in Matlab](https://fanwangecon.github.io/Math4Econ/matrix_basics/matrix_matlab.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_matlab_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_matlab.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_basics/matrix_matlab.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_basics/matrix_matlab.html)
    - vectors, matrixes and multiple matrixes
    - **m**: *ceil, eye, tril, triu, rand(N,M,Q)*

## 3.2 Matrix System of Equations

1. [System of Linear Equations](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_equations.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_equations_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_equations.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_equations.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_equations.html)
    - one or multiple linear equations
    - coefficient matrix and augmented form
2. [Solving for Two Equations and Two Unknowns](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_system_2.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_system_2_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_system_2.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_linear_system_2.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_linear_system_2.html)
    - two equations and two unknowns matrix form
    - graphical intersection of two lines
    - using linear solver *linsolve*
    - **m**: *linsolve, double(solve(y_1 - y_2 == 0))*
3. [System of Linear Equations, Row Echelon Form](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_row_echelon_form.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_row_echelon_form_m.m) \|[**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_row_echelon_form.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_system_of_equations/matrix_row_echelon_form.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_system_of_equations/matrix_row_echelon_form.html)
    - two equations and two unknowns
    - elementary row operations and row echelon form

## 3.3 Applications--Firm's Problem
1. [Firm Maximization Problem with Capital and Labor](https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/KL_borrowhire_firm_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/KL_borrowhire_firm.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/KL_borrowhire_firm.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_application/KL_borrowhire_firm.html)
    - first order conditions Cobb-Douglas production function with Capital and Labor
    - log linearize first order conditions
    - matrix form and linsolve Cobb-Douglas production function
    - own and cross price elasticities
    - **m**: *linsolve, simplify(exp(linsolve())), meshgrid mesh, contourf, clabel, zlabel*

## 3.4 Applications--Household's Problem
2. [Household Maximization with Two Goods and Budget](https://fanwangecon.github.io/Math4Econ/matrix_application/twogoods.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/twogoods_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/twogoods.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/twogoods.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_application/twogoods.html)
    - preference over two good, cobb douglas utility
    - indifference curves and budget set
    - **m**: *linspace, meshgrid, mesh, contourf, clabel, colormap, zlabel, plot*

## 3.5 Applications--Approximate Demand and Supply
1. [First Order Taylor Approximation of Demand and Supply Curves](https://fanwangecon.github.io/Math4Econ/matrix_application/demand_supply_taylor_approximate.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_application/demand_supply_taylor_approximate.html)
    - simplified nonlinear form of demand and supply as functions or the interest rate
    - first order Taylor linear approximation of nonlinear demand and supply
    - **m**: *diff, subs(S,r,1), linsolve*
2. [Capital Demand and Supply Equilibrium Analysis](https://fanwangecon.github.io/Math4Econ/matrix_application/demand_supply_taylor_approximate_capital.html): [**m**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate_capital_m.m) \| [**mlx**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate_capital.mlx) \| [**pdf**](https://github.com/FanWangEcon/Math4Econ/blob/master/matrix_application/demand_supply_taylor_approximate_capital.pdf) \| [**html**](https://fanwangecon.github.io/Math4Econ/matrix_application/demand_supply_taylor_approximate_capital.html)
    - exact solutions for (approximated) equilibrium interest rate and asset supply/demand given linearized demand and supply equations
    - graphical illustration of exact equilibrium and linear approximated equilibrium
    - analyze how productivity, elasticity, wealth, discount factor impact equilibrium prices and quantity given exact solutions to linear approximation
    - **m**: *linspace, subs(diff(S,r), r, r0), subs(D, {Z,beta}, {Z_num, beta_num}); fplot, plot, line.Color, line.LineStyle*

# 4. Constrained Optimization

## 4.1 Firm's Problem
1. [Constrained Profit Maximization and Cost Minimization](optimization_application/profit_maximize.html)
2. [Cost Minimization and Marginal Cost](optimization_application/profit_maximize_crs_profit.html)

## 4.2 Household's Problem
1. [Constrained Utility Maximization and Expenditure Minimization](optimization_application/household_c1_c2_constrained.html)
2. [Income and Substitution Effects](optimization_application/household_c1_c2_constrained_r_change.html)

## 4.3 Inequality Constraints
1. [Borrowing Constraint](optimization_application/household_borrow_constrained.html)
2. [Constrained Household Borrowing/Saving and Labor Choice Problem](optimization_application/household_asset_labor_constrained.html)

## 4.4 Equilibrium and Government Policy
1. [Equilibrium Interest Rate](equilibrium/equilibrium_constrainedborrow.html)
2. [Equilibrium Interest Rate and Wage](equilibrium/equilibrium_constrainedborrow_labor.html)

----
Files are from [Fan](https://fanwangecon.github.io)'s [Math4Econ](https://github.com/FanWangEcon/Math4Econ) repository. Please contact [FanWangEcon](https://fanwangecon.github.io/) for issues or problems.

![RepoSize](https://img.shields.io/github/repo-size/fanwangecon/Math4Econ)
![CodeSize](https://img.shields.io/github/languages/code-size/fanwangecon/Math4Econ)
![Language](https://img.shields.io/github/languages/top/fanwangecon/Math4Econ)
![Release](https://img.shields.io/github/downloads/fanwangecon/Math4Econ/total)
![License](https://img.shields.io/github/license/fanwangecon/Math4Econ)
