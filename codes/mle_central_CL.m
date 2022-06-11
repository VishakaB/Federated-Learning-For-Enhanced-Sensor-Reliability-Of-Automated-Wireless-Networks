
function [newestshape,newestscale] = mle_central_CL(observed_lifetime_log_CL,maximum_lifetime)
%mle at central 

save('observed_lifetime_log_CL.mat')
%ref : https://se.mathworks.com/help/stats/mle.html

load(fullfile('C:\research plots','observed_lifetime_log_CL.mat'))
% load(fullfile('/home/so/vbasnaya18/june11/codes/with communication/','observed_lifetimelog.mat'))

custlogpdf = @(data,lambda,k) log(k/lambda)+ log((data/lambda).^(k-1))+ log(exp(-(data/lambda).^k))...
    -log(1-exp(-(maximum_lifetime/lambda)^k));
custlogsf = @(data,lambda,k) log(1) - log(1-exp(-(data/lambda).^k)) + log(1-exp(-(maximum_lifetime/lambda)^k));

[newparameters] = mle(observed_lifetime_log_CL(observed_lifetime_log_CL~=0),'logpdf',custlogpdf,'logsf',custlogsf,...
    'start',[1,2]);
newestscale = newparameters(1);
newestshape = newparameters(2);

end
