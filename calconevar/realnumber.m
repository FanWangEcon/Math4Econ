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
%%