function C = matrix_multiply(A, B)

    if size(A, 2) ~= size(B, 1)
        error('Matrix dimensions are not compatible for multiplication.');
    end

    C = A * B;
end

% Multiplying two 3X3 matrices
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = [9, 8, 7; 6, 5, 4; 3, 2, 1];
C = matrix_multiply(A, B);
disp('Matrix C (Result of Matrix Multiplication A * B):');
disp(C);

