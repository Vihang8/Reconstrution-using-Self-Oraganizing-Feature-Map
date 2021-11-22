outputImage = zeros(512,512);
column_counter = 1;

for i = 1:4:509
    for j = 1:4:509
        row_counter = 1;
        for k = j:j+3
            for l = i:i+3
                outputImage(k,l) = X_input_receiver(row_counter,column_counter);
                row_counter = row_counter + 1;
            end
        end
        column_counter = column_counter + 1;
    end
end
