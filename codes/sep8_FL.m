clear all
%close all
clc
total_states = 3;

target_robots = 10;
% data_count = zeros(1,50);
mean_outageFL = zeros(1,target_robots);
mean_varianceFL = zeros(1,target_robots); %average variance of the system per time unit
mean_optimal_costFL = zeros(1,target_robots);
mean_avg_replacement_costFL = zeros(1,target_robots);
mean_avg_comm_costFL = zeros(1,target_robots);
mean_LL_FL = zeros(1,target_robots);
data_count_FL = zeros(1,target_robots);

mean_outageFL_rng = zeros(total_states,target_robots);
mean_varianceFL_rng = zeros(total_states,target_robots);
data_count_FL_rng = zeros(total_states,target_robots);
mean_optimal_costFL_rng = zeros(total_states,target_robots);
mean_avg_replacement_costFL_rng = zeros(total_states,target_robots);
meamean_LL_FL_rng = zeros(total_states,target_robots);

for range_state = 1:total_states
   rng(range_state); 

for total_no_robots = 1:target_robots
% neighbor_robo = 10;

% fprintf('total_robots=%d\n',total_no_robots)
% mean_outage = zeros(1,total_no_robots);%1,no of robots
% outage_ =zeros(total_no_robots,total_time);%no of robots, total time
% range_state_mean_outage = zeros(total_range_state,total_no_robots);%range_states,number of robots
% data_count = zeros(total_time,total_no_robots); 
% range_state_data_count = zeros(total_range_state,total_no_robots);
% mean_variance = zeros(1,total_no_robots); 
% range_state_variance = zeros(total_range_state,total_no_robots);
% mean_optimalcost = zeros(1,total_no_robots); 
% range_state_optimalcost = zeros(total_range_state,total_no_robots);
% mean_avg_replacement_cost= zeros(1,total_no_robots); 
% range_state_avg_replacement_cost = zeros(total_range_state,total_no_robots);
% mean_avg_comm_cost = zeros(1,total_no_robots); 
% range_state_avg_comm_cost = zeros(total_range_state,total_no_robots);
% mean_LL = zeros(1,total_no_robots); 
% range_state_LL= zeros(total_range_state,total_no_robots);

simulation_parameters;
initialization;

    time_index = 1;
    time = 0;

[neighbor_robo_vector] = ...
    neighbor_local_positioning(total_no_robots,communication_radius,x_area,y_area,width,range_state);

while time <= total_time
    
    while (time_index < limit)
%     fprintf('time_index=%d\n',time_index)
    
        for robo_index = 1:total_no_robots
            
            neighbor_robo = neighbor_robo_vector(robo_index);
            decision_com  = zeros(neighbor_robo,1);
                    
            variance_;
            
            if (mod(time_index,update_time_period) == 0) && (robo_index == total_no_robots)
                
                globalestimate_;%global estimate of scale and shape
                
            else
                
                observed_lifetime_local_data;%collecting failure data and running mle on data
                
            end
            
            optimization_;
            
            age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
            
        end
               
        time_index = time_index + 1;
        
    end
    
    limit = limit + update_time_period;%parameter update to server time index
    time  = time_index;%system time index
    time_index;
    
end

results;

end

range_average;

end

result_plots_FL;

