
function [sorted] = QuickSort(A)
  iBeg = 1;
  iEnd = numel(A);
  stack(end + 1) = struct('iBeg', iBeg, 'iEnd', iEnd);     % push on stack

  while numel(stack) != 0

    iBeg = stack(end).iBeg;                                  % Extract last pair of indexes.
    iEnd = stack(end).iEnd;
    stack(end) = [ ];                                                % pop from stack

    [A, pivotIndex] = Partition(A, iBeg, iEnd);

    if pivotIndex - 1 > iBeg
      stack(end + 1) = struct('iBeg', iBeg, 'iEnd', pivotIndex - 1);
    end

    if pivotIndex + 1 < iEnd
      stack(end + 1) = struct('iBeg', pivotIndex + 1, 'iEnd', iEnd);
    end

  end

  sorted = A;

end
A = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]; % Example array
sorted = QuickSort(A);
disp('Sorted array:');
disp(sorted);
end
