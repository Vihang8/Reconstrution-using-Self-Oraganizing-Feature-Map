%Reconstructing the original and received image:
X_trial = squeeze(X); 
whos X_trial
% Display the slice:
%imshow(X_trial, [], 'InitialMagnification', 500);
%axis on;

outputImage_trial = squeeze(outputImage); 
whos outputImage_trial
% Display the slice:
imshow(outputImage_trial, [], 'InitialMagnification', 500);
%axis on;

%Computing the distortion
varianceOriginal = var(X_trial);
varianceError = var(outputImage_trial);
SNRdb = 10*log10(varianceOriginal/varianceError);
disp(SNRdb)