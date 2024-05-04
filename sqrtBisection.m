% Function to find square root using bisection method
function result = sqrt_bisection(a, b, tolerance)
    f = @(x) x^2 - 2;
    while abs(b - a) > tolerance
        % Calculate midpoint
        mid_point = (a + b) / 2;

        % Check if the root is in the left or right half of the interval
        if f(mid_point) > 0
            b = mid_point;
        else
            a = mid_point;
        end
    end

    % Return the midpoint as the approximation of the square root
    result = (a + b) / 2;
end


a = 0;
b = 2;
tolerance = 0.0001;

result = sqrt_bisection(a, b, tolerance);

disp(['Square root of 2 using bisection method: ', num2str(result)]);

