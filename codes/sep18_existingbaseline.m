clear all
clc

range_state = 1;
rng(range_state);
% data_count = zeros(1,50);
target_robots = 10;
mean_outage_ex = zeros(1,target_robots);
mean_variance_ex =zeros(1,target_robots); %average variance of the system per time unit
mean_optimal_cost_ex = zeros(1,target_robots);
total_no_robots = 10;
% sensor_val_index  = 1;

for total_no_robots = 1:10
    % mean_outage_estH = zeros(1,total_no_robots);
    % outage_time =zeros(total_no_robots,total_time);
    % range_state_mean_outage_estH = zeros(total_range_state,total_no_robots );
    %
    % mean_variance_estH = zeros(1,total_no_robots);
    % range_state_variance_estH = zeros(total_range_state,total_no_robots);
    % mean_optimalcost_estH = zeros(1,total_no_robots);
    % range_state_optimalcost_estH = zeros(total_range_state,total_no_robots);
    % mean_avg_replacement_cost_estH = zeros(1,total_no_robots);
    % range_state_avg_replacement_cost_estH = zeros(total_range_state,total_no_robots);
    % mean_avg_comm_cost_CL = zeros(1,total_no_robots);
    % range_state_avg_comm_cost_estH = zeros(total_range_state,total_no_robots);
    % mean_LL_estH = zeros(1,total_no_robots);
    % range_state_LL_estH= zeros(total_range_state,total_no_robots);
    
    % total_time = 10;
%     fprintf('communication_radius=%d\n',communication_radius)
    simulation_parameters;
    initialization;
    
    while time_index <= total_time
        %     fprintf('time_index=%d\n',time_index)
        %      fprintf('time_index=%d\n',time_index)
        for robo_index = 1:  total_no_robots
            %         fprintf('robo_index=%d\n',robo_index)
                      
            
            burnt{time_index,robo_index}    = age{time_index,robo_index}(:) > ...
                lifetime{robo_index};%burnt number of sensors at each time instant
            % burnt{time_index,robo_index}(:)
            if (sensors_array - sum(burnt{time_index,robo_index}(:))) > 0 %variance calculate using burnt count
                variance(time_index,robo_index)   = 1/(sensors_array -...
                    sum(burnt{time_index,robo_index}));
                outage(time_index,robo_index) = ...%calculation of outages using threshhold variance
                    variance(time_index,robo_index) > ...
                    1/(reliability_percentage*sensors_array);
            else
                variance(time_index,robo_index) = variance_error;
                outage(time_index,robo_index)   = 1;
            end
            
            
            if sum(burnt{time_index,robo_index})>0
                
                %if number of replacements is positive new sensor replacement
                lifetime{robo_index}(burnt{time_index,robo_index}(:) == 1) = ...
                    new{robo_index}(1:sum(burnt{time_index,robo_index}));
                age{time_index,robo_index}(burnt{time_index,robo_index}(:)== 1) = 0; %age of replaced sensors made zero
                new{robo_index}(1:sum(burnt{time_index,robo_index})) = [];%places of new sensors which were used are emptied
            end
            
            avg_replacement_cost(time_index,robo_index) = sensor_val*sum(burnt{time_index,robo_index});
            age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
            
        end
        
        time_index = time_index + 1;
        
    end
    
    results_ex;
%     sensor_val_index  = sensor_val_index + 1 ;
end

result_plots_ex;

