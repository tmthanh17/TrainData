random=randperm(2500);
%80% lam du lieu training
X1tr=X1cut(random(1:2000),:);
y1tr=y1(random(1:2000),:);

X2tr=X2cut(random(1:2000),:);
y2tr=y2(random(1:2000),:);

X3tr=X3cut(random(1:2000),:);
y3tr=y3(random(1:2000),:);

X4tr=X4cut(random(1:2000),:);
y4tr=y4(random(1:2000),:);

X5tr=X5cut(random(1:2000),:);
y5tr=y5(random(1:2000),:);

X6tr=X6cut(random(1:2000),:);
y6tr=y6(random(1:2000),:);

X7tr=X7cut(random(1:2000),:);
y7tr=y7(random(1:2000),:);

Xtr= [ X1tr ; X2tr ; X3tr ; X4tr; X5tr ; X6tr ; X7tr  ];
ytr= [ y1tr ; y2tr ; y3tr ; y4tr; y5tr ; y6tr ; y7tr  ];
%20% lam test
X1t=X1cut(random(2001:end),:);
yt1=y1(random(2001:end),:);

X2t=X2cut(random(2001:end),:);
yt2=y2(random(2001:end),:);

X3t=X3cut(random(2001:end),:);
yt3=y3(random(2001:end),:);

X4t=X4cut(random(2001:end),:);
yt4=y4(random(2001:end),:);

X5t=X5cut(random(2001:end),:);
yt5=y5(random(2001:end),:);

X6t=X6cut(random(2001:end),:);
yt6=y6(random(2001:end),:);

X7t=X7cut(random(2001:end),:);
yt7=y7(random(2001:end),:);

Xt= [ X1t ; X2t ; X3t ; X4t; X5t;X6t;X7t ];
yt= [ yt1 ; yt2 ; yt3 ; yt4; yt5; yt6 ; yt7 ];
%huan luyen mo hinh
model =fitcknn(Xtr,ytr,'OptimizeHyperparameters','auto',...
    'HyperparameterOptimizationOptions',...
    struct('AcquisitionFunctionName','expected-improvement-plus'));
% kiem tra mo hinh
result=predict(model,Xt);
accuracy=sum(result == yt)/length(yt)*100;
sp=sprintf("Test accuracy = %.2f",accuracy);
disp(sp);

