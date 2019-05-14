# Non-parametric-priors-for-GAN
It contains codes for generating non-parametric priors used in the paper titled "Non-Parametric Priors for GAN".

non_param_pdf.mat : contains the non parametric pdf used in the paper.

test.py : example file shows how to use non-parametric prior pdf to generate continuous random variable.

ProbabilityTests.m : main matlab file to generate non-parametric pdf.

KL_div.m : contains function to compute KL divergence between prior and the mid-point.

pdfcon.m : contains necessary constraints for pdf like variance.


For Gan we used DCGAN model implemented in tensorflow by carpedm20 : https://github.com/carpedm20/DCGAN-tensorflow.git



