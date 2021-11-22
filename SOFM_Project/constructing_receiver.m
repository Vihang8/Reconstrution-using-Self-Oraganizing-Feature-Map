X_input_receiver = zeros(16,16384);

Codebook_transpose = net.IW{1,:}
Codebook = transpose(Codebook_transpose)

for i = 1:16384
    X_input_receiver(:,i) = Codebook(:,indices(i));
end