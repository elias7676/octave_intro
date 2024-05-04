function index = BinarySearch(sorted, target)
    % Binary search algorithm to find the index of target in sorted array
    left = 1;
    right = numel(sorted);

    while left <= right
        mid = floor((left + right) / 2);

        if sorted(mid) == target
            index = mid;
            return;

        elseif sorted(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end

    % If target is not found, return -1
    index = -1;
end

A = [1, 2, 3, 4, 5, 6, 7, 8, 9]; % Example sorted array
target = 5; % Value to search for
index = BinarySearch(A, target);
disp(['Index of ', num2str(target), ' in the array: ', num2str(index)]);
