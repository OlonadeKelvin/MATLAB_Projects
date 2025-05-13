% Suppose a colony of 1000 bacteria is multiplying at the rate of r =0.8 per hour
% per individual. How many bacteria are there after 10 hours?

% This is an exponential growth
% N(t) = N(0)e^(rt)

% Using Euler Algorithm
% N_(i+1) = N_i + rhN_i

%Taking h as 0.1
h = 0.1; %step
r = 0.8; % rate
a = 0; % time 0
b = 10; % time span
m = (b-a)/h; %m interval steps
N = zeros(1,m+1);
N(1) = 1000;
t = a:h:b;

for i = 1:m
     N(i+1) = N(i) + r*h*N(i);
end

Nex = N(1) * exp(r*t);
% Solve using ode45
[t_ode, Node] = ode45(@(t, N) 0.8*N, [0 10], 1000);

% Fix: Interpolate ode45 results to match t
Node_interp = interp1(t_ode, Node, t, 'linear', 'extrap');

% Display results
format bank
disp([t' N' Nex' Node_interp'])

% Plot the results
plot(t,N, 'r', 'LineWidth', 1.5), xlabel('Hours'), ylabel('Bacteria')
hold on
plot(t, Node_interp, 'g--', 'LineWidth', 1.5)
plot(t, Nex, 'b:', 'LineWidth', 1.5)
title('Comparison of Euler, Exact Solution, and ODE45')
legend('Euler Approximation', 'ODE45 Solution', 'Exact Solution')
hold off
%saveas(gcf, 'Euler vs ODE45.jpg');
