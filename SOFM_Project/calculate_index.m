indices = zeros(1,16384);
counter_array = 1;

for i = 1:16384
    index_vector = net(X_input(:,i));

    for j = 1:length(index_vector)
        if index_vector(j) == 1
            indices(counter_array) = j;
            counter_array = counter_array+1;
        end
    end
end

disp(indices)