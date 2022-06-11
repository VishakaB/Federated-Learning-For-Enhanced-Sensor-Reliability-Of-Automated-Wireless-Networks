clear all
clc

total_states = 3;
%data_count = zeros(1,50);
total_radius =15;
mean_outage = zeros(1,total_radius);
mean_variance =zeros(1,total_radius); %average variance of the system per time unit
mean_optimal_cost = zeros(1,total_radius);
mean_avg_replacement_cost = zeros(1,total_radius);
mean_avg_comm_cost = zeros(1,total_radius);
mean_LL_CL = zeros(1,total_radius);
data_count = zeros(1,total_radius);

mean_outageCL_rng = zeros(total_states,total_radius);
mean_varianceCL_rng = zeros(total_states,total_radius);
data_count_CL_rng = zeros(total_states,total_radius);
mean_optimal_costCL_rng = zeros(total_states,total_radius);
mean_avg_replacement_costCL_rng = zeros(total_states,total_radius);
meamean_LL_CL_rng = zeros(total_states,total_radius);
total_no_robots = 10;

for range_state = 1:total_states
   rng(range_state); 

for communication_radius  = 1:total_radius
% neighbor_robo = 10;

fprintf('communication_radius=%d\n',communication_radius)
% data_count_CL = zeros(total_time,total_no_robots); 
% range_state_data_count_CL = zeros(total_range_state,total_no_robots);
% mean_variance_CL = zeros(1,total_no_robots); 
% range_state_variance_CL = zeros(total_range_state,total_no_robots);
% mean_optimalcost_CL = zeros(1,total_no_robots); 
% range_state_optimalcost_CL = zeros(total_range_state,total_no_robots);
% mean_avg_replacement_cost_CL = zeros(1,total_no_robots); 
% range_state_avg_replacement_cost_CL = zeros(total_range_state,total_no_robots);
% mean_avg_comm_cost_CL = zeros(1,total_no_robots); 
% range_state_avg_comm_cost_CL = zeros(total_range_state,total_no_robots);
% mean_LL_CL = zeros(1,total_no_robots); 
% range_state_LL_CL= zeros(total_range_state,total_no_robots);

simulation_parameters;
initialization;

    time_index = 1;
    time = 0;

[neighbor_robo_vector] = ...
    neighbor_local_positioning(total_no_robots,communication_radius,x_area,y_area,width,range_state);
    
while time_index <= total_time
%     fprintf('time_index=%d\n',time_index)
        for robo_index = 1: total_no_robots
%             fprintf('robo_index=%d\n',robo_index)
            neighbor_robo = neighbor_robo_vector(robo_index);
            decision_com  = zeros(neighbor_robo,1);
            
            variance_;
            
            if  (robo_index == total_no_robots)
                
                globalestimate_CL;%global estimate of scale and shape
                
            else
                
                observed_lifetime_local_data_CL;%collecting failure data and running mle on data
                
            end
            
            optimization_;
            
            age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
            
        end
               
        time_index = time_index + 1;
        
    
    %parameter update to server time index
   %system time index
   
end

results_CL;

end

range_state_CL;

end
result_plots_CL;