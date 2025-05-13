x0 = [1 0 0]; %initial conditions, can be changed

% Using Runge-Kutta method (RK4/5) from ODE45
%[t, x] = ode45(@equations, timespan, x0)

timespan = [0 50];
% Setting timespan = [0 50] lets us monitor the system while observing
% meaningful behaviour without excessive computation.

%Setting tolerance to maintain accuracy
options = odeset('RelTol',1e-6,'AbsTol',1e-8);
[t, x] = ode45(@equations, timespan, x0, options);

%Extracting Solutions
x1 = x(:,1); 
x2 = x(:,2);
x3 = x(:,3);

%Displaying Results
disp('System State Variables:');
disp([x1' x2' x3']);

%Finding maximum absolute values of each variable
max_value = max(abs(x),[],1);

%Plot of x3 vs x2
figure;
plot(x2,x3, 'g', 'LineWidth',2);
%Labelling the axis and plot
xlabel 'x_2'; ylabel 'x_3';
title('Plot of x_3 vs x_2');
grid on;

%Plot of x3 vs x1
figure;
plot(x1,x3, 'r', 'LineWidth',2);
%Labelling the axis and plot
xlabel 'x_1'; ylabel 'x_3';
title('Plot of x_3 vs x_1');
grid on;

%Plot of x2 vs x1
figure;
plot(x1,x2, 'b', 'LineWidth',2);
%Labelling the axis and plot
xlabel 'x_1'; ylabel 'x_2';
title('Plot of x_2 vs x_1');
grid on;

%Plot of x1 vs time
figure;
plot(t,x1, 'm', 'LineWidth',2);
%Labelling the axis and plot
xlabel 'Time (t)'; ylabel 'x_1';
title('Time response of x_1');
grid on;
