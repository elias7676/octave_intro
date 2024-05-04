function result = isPalindrome(str)
    % Recursive palindrome checker

    % Base case: empty string or single character is a palindrome
    if length(str) <= 1
        result = true;
    % Recursive step: compare first and last characters, then check the substring in between
    elseif str(1) == str(end)
        result = isPalindrome(str(2:end-1));
    else
        result = false;
    end
end

% Test the function
str = 'madam'; % Test string
result = isPalindrome(str);
disp(['Is "', str, '" a palindrome? ', num2str(result)]);

