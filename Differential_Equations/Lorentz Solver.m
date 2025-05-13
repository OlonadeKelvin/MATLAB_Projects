x0 = [-2 -3.5 21]; %initial conditions
[t,x] = ode45(@Lorentz, [0,10], x0);
%plot(t,x)
hold on
plot(t,x(:,2),'g')



x0 = [-2.04 -3.5 21]; %initial conditions
[t,x] = ode45(@Lorentz, [0,10], x0);
%plot(t,x)
plot(t,x(:,2),'r')
title 'ODE45'
saveas(gcf, 'ODE45.jpg');

figure
x0 = [-2 -3.5 21]; %initial conditions
[t,x] = ode23(@Lorentz, [0,10], x0);
%plot(t,x)
hold on
plot(t,x(:,2),'g')


x0 = [-2.04 -3.5 21]; %initial conditions
[t,x] = ode23(@Lorentz, [0,10], x0);
%plot(t,x)
plot(t,x(:,2),'r')
title 'ODE23'
saveas(gcf, 'ODE23.jpg');

figure
x0 = [-2 -3.5 21]; %initial conditions
[t,x] = ode23s(@Lorentz, [0,10], x0);
%plot(t,x)
hold on
plot(t,x(:,2),'g')


x0 = [-2.04 -3.5 21]; %initial conditions
[t,x] = ode23s(@Lorentz, [0,10], x0);
%plot(t,x)
plot(t,x(:,2),'r')
title 'ODE23S'
saveas(gcf, 'ODE23s.jpg');

figure
plot(x(:,1), x(:,3))
saveas(gcf, 'x1 vs x3.jpg');
