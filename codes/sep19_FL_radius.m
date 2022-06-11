clear all
%close all
clc

range_state = 1;
rng(range_state);
maximum_radius=20;
% data_count = zeros(1,50);
mean_outageFL = zeros(1,maximum_radius);
mean_varianceFL =zeros(1,maximum_radius); %average variance of the system per time unit
mean_optimal_costFL = zeros(1,maximum_radius);
mean_avg_replacement_costFL = zeros(1,maximum_radius);
mean_avg_comm_costFL = zeros(1,maximum_radius);
mean_LL_FL = zeros(1,maximum_radius);
data_count_FL = zeros(1,maximum_radius);
total_no_robots = 10;

for communication_radius =1:10
% neighbor_robo = 10;

fprintf('communication_radius=%d\n',communication_radius)

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

results_radius;

end
% 
result_plots_radius;
