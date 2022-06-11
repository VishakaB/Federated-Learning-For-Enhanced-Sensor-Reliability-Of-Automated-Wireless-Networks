observed_lifetime_log_CL(:);

if sum(observed_lifetime_log_CL(:))> 1
    [estshape,estscale] = mle_central_CL(observed_lifetime_log_CL(observed_lifetime_log_CL~=0),maximum_lifetime);%MLE using..
%     observed_lifetime_log~=0
    %             collected within the total simulation time
else
    estshape = 1.3233;
    estscale = 5.3413;
end

estshape_log_CL(time_index) = [estshape;];%collection of model parameters collected within update time period
estscale_log_CL(time_index) = [estscale;];
