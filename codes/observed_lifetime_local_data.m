
%log of failed sensor data of a local robot sensor array

%observed_lifetime_local_data
if sum(burnt{time_index,robo_index}==1) > 1 %collection observed sensor failure data
    observed_lifetime  = age{burnt{time_index,robo_index}==1};
else
    observed_lifetime = 0;
end

%observed_lifetime_log{robo_index}(:) ;
observed_lifetime_logFL{robo_index} = [observed_lifetime_logFL{robo_index}(:); observed_lifetime;];%collection of failed sensor data within update time period
data_count(time_index,robo_index) = length(observed_lifetime_logFL{robo_index}(:));

if sum(observed_lifetime_logFL{robo_index}(:))> 1
    [estshape,estscale] = mle_centralFL(observed_lifetime_logFL{robo_index}(:),maximum_lifetime);%MLE using..
%     observed_lifetime_log~=0
    %             collected within the total simulation time
else
    estshape = 2;
    estscale = 10;
end

estshape_log{robo_index} = [estshape_log{robo_index}(:); estshape;];%collection of model parameters collected within update time period
estscale_log{robo_index} = [estscale_log{robo_index}(:); estscale;];

%log likelihood
LL(time_index,robo_index) = ...
    log((estshape/estscale) * (time_index./estscale) .^ (estshape-1) .*exp (-(time_index ./estscale).^estscale)./( 1 - exp ( -(maximum_lifetime/estscale)^estscale)));
