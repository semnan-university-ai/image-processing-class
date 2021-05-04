% Tamrin 7
subplot(2,2,1)
x = [0 0 1 1 0]; y = [0 1 1 0 0]; 
plot(x,y, 'LineWidth',2)
axis([0,2,0,2])
title('Square')
subplot(2,2,2)
x2 = [0 0 2 2 0]; y2 = [0 1 1 0 0]; plot(x2,y2, 'LineWidth',2)
title('Rectangle')
subplot(2,2,3)
x3 = [0 1 1 1 0]; y3 = [0 1 1 0 0]; plot(x3,y3,'r', 'LineWidth',2)
title('Triangle')
subplot(2,2,4)
plot(1,1,'d','color','r','markerfacecolor','b','markersize',50)
title('Diamond')



