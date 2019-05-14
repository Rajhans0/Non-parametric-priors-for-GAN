function [c,ceq] = pdfcon(x)
N = length(x);

vec  = 1:N;
c = -[sum(x.*vec.^2) - sum(x.*vec)^2 ]/N + 0.75;  %%%% -x <=0
 
ceq = sum(x) - 1;
return;
