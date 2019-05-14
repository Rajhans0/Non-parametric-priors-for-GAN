

function out = KL_div(X) %%%% computes divergence between pdf of X and pdf of (X_1 + X_2) / 2
[n, N] = size(X);
out =0;

Y = conv(X,X);

a = 1:2:2*N-1;
Y_2 = Y(a);

Y_2 = Y_2 / sum(Y_2);
%out = out + norm (X - Y_2);
out =  out + sum(X.*log(X./Y_2));
end