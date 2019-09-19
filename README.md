
# Math for Economists Matlab Tutorials

This is a work-in-progress [course website](https://fanwangecon.github.io/Math4Econ/) for Mathematics for Economists, produced by [Fan](https://fanwangecon.github.io/). Course covers a limited subset of topics from *Mathematics for Economists* (Simon and Blume 1994), and uses various definitions from the book. Matlab's symbolic toolbox is used throughout.

Materials are written in matlab livescript files and shown as HTML files. To obtain matlab codes, see [here](docs/gitsetup.md) and [here](docs/gitsetupown.md) for github set up. For HTML files, click on the links below.

Please contact [FanWangEcon](https://fanwangecon.github.io/) for issues or problems.

# 1. Basic Calculus and Applications

## 1.1 Basics

1. [Real Number and intervals](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
    - definition and draw a line
    - **m**: *linspace, line, set(gca, yaxis off), pbaspect*
2. [What is a Function?](https://fanwangecon.github.io/Math4Econ/calconevar/whatisfunction.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/whatisfunction.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/whatisfunction.html)
    - domain, argument, do-domain, image/value, range
    - **m**: *sin, plot, circle  plot*    
3. [Function Notations](https://fanwangecon.github.io/Math4Econ/calconevar/funcnotations.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/funcnotations.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/funcnotations.html)
    - consistent function naming
4. [Interval Notations and Examples](https://fanwangecon.github.io/Math4Econ/calconevar/interval.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/interval.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/interval.html)
    - closed, open intervals
5. [Monomial and Polynomial](https://fanwangecon.github.io/Math4Econ/calconevar/polynomial.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/polynomial.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/polynomial.html)
    - monomial, polynomial, degree of polynomial
    - **m**: *syms x, f(x) = a*x, fplot(@(x) f(x,a), [x_low, x_high])*    
6. [Local and Global Maximum](https://fanwangecon.github.io/Math4Econ/calconevar/localglobal.html):
    - [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/localglobal.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/localglobal.html)
    - local and global maximum,
    - **m**: *syms, f(x) = x - a*x^2, double(solve(diff(f,x),x)), fplot(f,[x_low, x_high])*

## 1.2 Derivatives

1. [Derivative Definition and Rules](https://fanwangecon.github.io/Math4Econ/derivative/derivative_rules.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
2. [Continuity and Differentiability](https://fanwangecon.github.io/Math4Econ/derivative/continuous_differentiable.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
3. [Elasticity and Derivative](https://fanwangecon.github.io/Math4Econ/derivative/derivative_elasticity.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
4. [First Order Taylor Approximation](https://fanwangecon.github.io/Math4Econ/derivative/derivative_MPL_first_order_taylor_approximation.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
5. [Higher Order Derivatives--Cobb Douglas Production](https://fanwangecon.github.io/Math4Econ/derivative/second_derivative.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)

## 1.3 Application--Production Function

1. [Marginal Product Discrete Units of Workers](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_MPL_discrete_workers.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
2. [Derivative of Cobb-Douglas Production Function](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_cobb_douglas.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)
3. [Derivative Approximation and Cobb-Douglas Function](https://fanwangecon.github.io/Math4Econ/derivative_application/derivative_hslope_cobb_douglas.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/calconevar/realnumber.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/calconevar/realnumber.html)

## 1.4 Application--Demand and Supply

1. [Two Periods Saving/Borrowing without Shocks](https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households_m.m) \| [**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_save_households.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/derivative_application/K_save_households.html)
    + Endowments today and tomorrow, borrowing and savings, no shocks
    + Grid based or analytical solution
    + Supply curve of savings (asset)
    + **m**: *max, diff, solve; plot, scatter*
2. [Optimal Borrowing Choice Firm Maximization](https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html): [**M**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm_m.m) \|[**MLX**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm.mlx) \| [**PDF**](https://github.com/FanWangEcon/Math4Econ/blob/master/derivative_application/K_borrow_firm.pdf) \| [**HTML**](https://fanwangecon.github.io/Math4Econ/derivative_application/K_borrow_firm.html)
    + Profit maximization choosing capital, with labor fixed
    + Grid based or analytical solution
    + Demand curve of capital (asset)
    + **m**: *max, diff, solve; plot, scatter*

## 1.5 Application--Risky Asset

1. [Risky Assets and Different States of the World](nonlinear/RiskyAsset.html)

# 2. Exponential and Log

1. [Exponential Function](explog/exponential.html)
2. [Exponential Function and Log Function](explog/exolog.html)

# 3. Matrix

## 3.1 Basics

1. [Laws of Matrix Algebra](matrix_basics/matlab_define_matrix.html)
2. [Matrix Addition and Multiplication](matrix_basics/matrix_algebra_rules.html)
3. [Creating Matrixes in Matlab](matrix_basics/matrix_matlab.html)

## 3.2 Matrix System of Equations

1. [System of Linear Equations](matrix_system_of_equations/matrix_linear_equations.html)
2. [Solving for Two Equations and Two Unknowns](matrix_system_of_equations/matrix_linear_system_2.html)
3. [System of Linear Equations, Row Echelon Form](matrix_system_of_equations/matrix_row_echelon_form.html)

## 3.3 Application--Firm's Problem
1. [Firm Maximization Problem with Capital and Labor](matrix_application/KL_borrowhire_firm.html)

## 3.4 Application--Household's Problem
2. [Household Maximization with Two Goods and Budget](matrix_application/twogoods.html)

## 3.5 Application--Approximate Demand and Supply
1. [First Order Taylor Approximation of Demand and Supply Curves](matrix_application/demand_supply_taylor_approximate.html)
1. [First Order Taylor Approximation of Demand and Supply Curves for Capital](matrix_application/demand_supply_taylor_approximate_capital.html)


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
