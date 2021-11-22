# Reconstrution-using-Self-Oraganizing-Feature-Map
This project aims to encode a given image into code book vectors using Self-Organizing-Feature-Map and study the reconstruction by varying the number of weights of SOFM

The first task tells us to partition the image into non-overlapping blocks of sizes
4x4 and train various SOFM networks to establish codebook vectors. Thus, the
image is rearranged in the sense that the 16 (4x4) pixels in the top left corner
are flattened out to form the first column of the input matrix which is fed to
the SOFM. This procedure is carried out until the 16 (4x4) pixels in the bot-
tom right corner are flattened out to form the last column of the input matrix
provided to the SOFM in a row major order.
This changes the dimension of the input from 512x512 to 16x16384 pixel squared.
Thus, now the weight vectors of the SOFM are 16 dimensional, trying to code
the PDF of the 16384 pattern vectors. Now, the target is to vary the number of
weight vectors among 16,32,64,128 to 256 to code this PDF of the 16384 pattern
vectors.

The SOFM is trained on the input data rearranged earlier. The performance on
the training image is calculated by passing the 4x4 blocks of image through the
network and storing the corresponding index of the excited neuron in an array.
This array of indices can be then transmitted to the receiver which also has the
codebook. The dimension of the codebook is 16x(number of weight vectors).
The receiver then reconstructs the image by first pulling out the columns corre-
sponding to the indices from the code book and then rearranging those columns
in the previous 4x4 blocks of the original image by ”unflattening” them. Finally,
both the original and the new images are matched to see the distortion visually.