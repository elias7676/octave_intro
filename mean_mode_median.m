% Read dataset
data = readtable('data.csv');

column = data.battery_power;

% Calculate mean, mode, and median
mean_value = mean(column);
mode_value = mode(column);
median_value = median(column);

% Display the results
disp(['Mean: ', num2str(mean_value)]);
disp(['Mode: ', num2str(mode_value)]);
disp(['Median: ', num2str(median_value)]);

