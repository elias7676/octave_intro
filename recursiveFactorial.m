function [out] = myRecFactorial(n)
    % Recursive factorial function

    % Base case: factorial of 1 is 1
    if n == 1
        out = 1;
    else
        % Recursive step: factorial of n is n times factorial of (n-1)
        out = n * myRecFactorial(n - 1);
    end
end

% Test the function
n = 5; % Test value
result = myRecFactorial(n);
disp(['Factorial of ', num2str(n), ' is ', num2str(result)]);

