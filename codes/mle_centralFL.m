
function [newestshape,newestscale] = mle_centralFL(observed_lifetimelogFL,maximum_lifetime)
%mle at central 

save('observed_lifetimelogFL.mat')
%ref : https://se.mathworks.com/help/stats/mle.html

load(fullfile('C:\research plots','observed_lifetimelogFL.mat'))
% load(fullfile('/home/so/vbasnaya18/june11/codes/with communication/','observed_lifetimelog.mat'))

custlogpdf = @(data,lambda,k) log(k/lambda)+ log((data/lambda).^(k-1))+ log(exp(-(data/lambda).^k))...
    -log(1-exp(-(maximum_lifetime/lambda)^k));
custlogsf = @(data,lambda,k) log(1) - log(1-exp(-(data/lambda).^k)) + log(1-exp(-(maximum_lifetime/lambda)^k));

[newparameters] = mle(observed_lifetimelogFL(observed_lifetimelogFL~=0),'logpdf',custlogpdf,'logsf',custlogsf,...
    'start',[2,1]);
newestscale = newparameters(1);
newestshape = newparameters(2);

end
