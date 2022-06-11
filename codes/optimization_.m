
% optimization
% neighbor_robo =10;

%using CDF
[cdf1]   =  wei_cdf_new(age{time_index,robo_index} + age_increment,estshape,estscale,maximum_lifetime);
[cdf0]   =  wei_cdf_new(age{time_index,robo_index},estshape,estscale,maximum_lifetime);

%failure rate of next instance
alpha = (cdf1-cdf0)./(1-cdf0); %conditional sensor failure
alpha(burnt{time_index,robo_index}(:)==1)=1;
alpha(alpha==NaN) = 1;

%time varying channel
if neighbor_robo ~= 0
    beta = rand(neighbor_robo,1);
    channel           = (1/(sqrt(2)))*(randn(neighbor_robo,1)+1i*...
        randn(neighbor_robo,1));%rayleigh fading channel
    N0                = 1;%noise power
    [P_allocated]     = exchanges(maximum_power,channel,neighbor_robo,N0);%power allocaated using waterfilling
    [neighbor_link_rate] = rate_neighbor_link(P_allocated,channel,neighbor_robo,N0);%neighbor link rates according to power allocated..
    %         and channel
    pathloss          = log2(4*communication_radius/(12.5 *10^-3));%pathloss on the signal
    channelGain       = communication_radius^pathloss;%amount of channel gain under the effect of pathloss
    rate_thresh       = log2( 1 + P_allocated*channelGain/N0);% rate threshhold considering effect of pathloss
    communication_cost =  communication_val *ones(neighbor_robo,1);
    prev_decision_com = zeros(neighbor_robo,1);
    prev_decision_sensor= zeros(sensors_array,1);
    
    cvx_begin quiet
    
    variable decision_sensor(sensors_array,1) binary
    variable decision_com(neighbor_robo,1) binary
    %objective
    minimize([sensor_replacement_cost; communication_cost.*P_allocated; ]'*[decision_sensor;decision_com;])
    
    %constraints
    subject to
    
    (sensors_array + alpha'*(decision_sensor-1) + beta'*decision_com )...
        >= reliability_percentage*sensors_array
    decision_com'*P_allocated <=  maximum_power
    decision_com'*(abs(neighbor_link_rate) - rate_thresh) >= 0
    
    cvx_end
    
    %         disp(cvx_optval)
    decision_com;
    decision_sensor;
    
    
else
    prev_decision_sensor= zeros(sensors_array,1);
    beta =0;
    
    cvx_begin quiet
    variable decision_sensor(sensors_array,1) binary
    
    %objective
    minimize([sensor_replacement_cost;]'*[decision_sensor;])
    
    %constraints
    subject to
    
    (sensors_array + alpha'*(decision_sensor-1))...
        >= reliability_percentage*sensors_array %reliability obtainable by sensor replacements and communication
    
    cvx_end
    decision_com;
end

optimal_cost(time_index,robo_index) = cvx_optval;
avg_replacement_cost(time_index,robo_index) = sum(decision_sensor);
avg_comm_cost(time_index,robo_index) = sum(decision_com);

sum_replacements = sum(decision_sensor==1);%sum of sensors to be replaced

if sum_replacements > 0 %if number of replacements is positive new sensor replacement
    lifetime{robo_index}(decision_sensor == 1) = ...
        new{robo_index}(1:round(sum_replacements));
    age{time_index,robo_index}(decision_sensor == 1) = 0; %age of replaced sensors made zero
    new{robo_index}(1:sum_replacements) = [];%places of new sensors which were used are emptied
end






