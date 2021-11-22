X = load('BABOON.mat');
X = X.baboon;

X_input = zeros(16,2^(14));
X_vector = zeros(16,1);
column_counter = 1;

for i = 1:4:509
    for j = 1:4:509
        row_counter = 1;
        for k = j:j+3
            for l = i:i+3
                X_input(row_counter,column_counter) = X(k,l);
                row_counter = row_counter + 1;
            end
        end
        column_counter = column_counter + 1;
    end
end
disp(X_input(:,1));