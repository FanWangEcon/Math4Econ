%% Interval Notations and Examples
% *back to *<https://fanwangecon.github.io *Fan*>*'s *<https://fanwangecon.github.io/Math4Econ/ 
% *Intro Math for Econ*>*,  *<https://fanwangecon.github.io/M4Econ/ *Matlab Examples*>*, 
% or *<https://fanwangecon.github.io/CodeDynaAsset/ *Dynamic Asset*>* Repositories*
% 
% When we look at the problem facing a household, we often have to restrict 
% the choice set for example to an interval. 
%% Closed Interval
% For example, if $x$ is hours working, perhaps the household has to work at 
% least $a$ hours and up to $b$ hours, so his choice is between $a$ and $b$ hours 
% inclusive.
% 
% The interval that is inclusive of both endpoints is called a closed interval 
% (note the square brackets):
%% 
% * *closed interval*: $\left[ a, b \right] \equiv \{ x \in \mathbf{R} : a \le 
% x \le b\}$
%% Open Interval
% In general, an open interval is defined as (Note here we use parenthesis, 
% not square brackest) :
%% 
% * *open interval*:$\left( a, b \right) \equiv \{ x \in \mathbf{R} : a < x 
% < b\}$
%% Half Open and Half Close Interval
% We can also hafl half open intervals:
%% 
% * *half open (half closed) interval*: $\left[ a, b \right) \equiv \{ x \in 
% \mathbf{R} : a \le x < b\}$
% * *half open (half closed) interval*: $\left( a, b \right] \equiv \{ x \in 
% \mathbf{R} : a < x \le b\}$
%% Graph
% If you were to graph an interval, you can draw an empty circle at either end 
% of an interval that is open, and a solid circle if it is closed at that end. 

close all;
figure();
x = linspace(-1,5);
line(x,0*ones(size(x)))
set(gca,'ytick',[],'Ycolor','w','box','off')
ylim([-0.1 0.1])
xlim([-10  10])
pbaspect([4 1 1])
grid on
%%