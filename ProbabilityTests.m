clear all;
close all;


N = 1024;
s = linspace(1, 10, N);
X = (1/N)*ones(1,N);   %%% initial pdf of X


%X = exp(-s);
%X = rand(1,N);
%X = X/sum(X);



A = -eye(N);
B = zeros(1,N);
Aeq = [];
beq = [];

lb = zeros(1,N);
ub = ones(1,N);
options = optimoptions('fmincon','MaxFunctionEvaluations',1000000, 'MaxIterations', 1000000, 'Display','iter', 'PlotFcn', {@optimplotfval});
[X_final,val, flag, output] = fmincon(@KL_div,X,A,B,Aeq,beq,lb,ub,@pdfcon, options);


val
vec =  1:N;
x = X_final;
c = -[sum(x.*vec.^2) - sum(x.*vec)^2 ]/N
save('pdf_new.mat', 'X_final')
%plot(X_final)

