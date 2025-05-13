function dxdt = equations(~,x)
    dxdt = zeros(3,1); % Preallocating Variables to speed up execution
    F = 0.5;
    dxdt(1) = -x(3);
    dxdt(2) = x(1) - x(2);
    dxdt(3) = 3.1*x(1) + (x(2))^2 + F*x(1);
end
