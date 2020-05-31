%% Real Number and intervals
% *back to* <https://fanwangecon.github.io *Fan*>*'s* <https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,*  <https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or* <https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*> *Repositories*
%% Real Number Line
% $\mathbf{R^1}$ : can write $R^1$ or $R$ (you can add a superscript 1 to emphasize 
% this is first Euclidean space, either notation is fine), is the real number 
% line. 

close all;
figure();
x = linspace(-10,10);
line(x,0*ones(size(x)))
set(gca,'ytick',[],'Ycolor','w','box','off')
ylim([-0.1 0.1])
pbaspect([4 1 1])
grid on
%% Non-negative numbers
% In many economic problems, we have to restrict ourselves to numbers greater 
% or equal to zero.
%% 
% * We can not consume from negative numbers of apples
% * We can not produce with negative labor and capital
% * We would be infinitely unhappy (die) if there is zero consumption in a year
%% 
% We can use the following notation to define the set of non-negative real numbers:
% 
% $\mathbf{R_{\ge 0}} \equiv \{x \in \mathbf{R} : x \ge 0 \}$, some authors 
% use $\mathbf{R_{+}}$ instead of $\mathbf{R_{\ge 0}} $
% 
% And use inequality sign to define the set of real numbers greater than zero:
% 
% $\mathbf{R_{> 0}} \equiv \{x \in \mathbf{R} : x > 0 \}$, some authors use 
% $\mathbf{R_{++}}$ instead of $\mathbf{R_{>0}} $

close all;
figure();
x = linspace(0,10);
line(x,0*ones(size(x)))
set(gca,'ytick',[],'Ycolor','w','box','off')
ylim([-0.1 0.1])
xlim([-10 10])
pbaspect([4 1 1])
grid on
%%