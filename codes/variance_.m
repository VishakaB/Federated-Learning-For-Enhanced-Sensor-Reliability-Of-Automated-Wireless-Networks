% variance

burnt{time_index,robo_index}    = age{time_index,robo_index}(:) > ...
    lifetime{robo_index};%burnt number of sensors at each time instant
% burnt{time_index,robo_index}(:)
if (sensors_array - sum(burnt{time_index,robo_index}(:))) > 0 %variance calculate using burnt count
    variance(time_index,robo_index)   = 1/(sensors_array -...
        sum(burnt{time_index,robo_index})+ ...
        sum(decision_com(:)));
    outage(time_index,robo_index) = ...%calculation of outages using threshhold variance
        variance(time_index,robo_index) > ...
        1/(reliability_percentage*sensors_array);
else
    variance(time_index,robo_index) = variance_error;
    outage(time_index,robo_index)   = 1;
end


