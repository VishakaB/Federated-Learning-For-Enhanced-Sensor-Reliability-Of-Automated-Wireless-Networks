
%log of failed sensor data of a local robot sensor array
%observed_lifetime_local_data

if sum(burnt{time_index,robo_index}==1) > 1 %collection observed sensor failure data
    observed_lifetime  = age{burnt{time_index,robo_index}==1};
else
    observed_lifetime = 0;
end

observed_lifetime_log_CL = [observed_lifetime_log_CL; observed_lifetime;];%collection of failed sensor data within update time period
data_count_CL(time_index) = length(observed_lifetime_log_CL(:));

% if length(observed_lifetime_log_CL(:))> 1
%     [estshape,estscale] = mle_central(observed_lifetime_log_CL(:),maximum_lifetime);%MLE using..
% %     observed_lifetime_log~=0
%     %             collected within the total simulation time
% else
%     estshape = 1.3233;
%     estscale = 5.3413;
% end


%log likelihood
LL_CL(time_index,robo_index) = ...
    log((estshape/estscale) * (time_index./estscale) .^ (estshape-1) .*exp (- (time_index ./estscale).^estscale)./( 1 - exp ( -(maximum_lifetime/estscale)^estscale)));