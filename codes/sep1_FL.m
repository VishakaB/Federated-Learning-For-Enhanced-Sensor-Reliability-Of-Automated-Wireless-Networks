clear all
% close all
clc
total_no_robots  = 3;
total_range_state = 3;
total_time = 2;

mean_outage = zeros(1,total_no_robots);%1,no of robots
outage_ =zeros(total_no_robots,total_time);%no of robots, total time
range_state_mean_outage = zeros(total_range_state,total_no_robots);%range_states,number of robots
data_count = zeros(total_time,total_no_robots); 
range_state_data_count = zeros(total_range_state,total_no_robots);
mean_variance = zeros(1,total_no_robots); 
range_state_variance = zeros(total_range_state,total_no_robots);
mean_optimalcost = zeros(1,total_no_robots); 
range_state_optimalcost = zeros(total_range_state,total_no_robots);
mean_avg_replacement_cost= zeros(1,total_no_robots); 
range_state_avg_replacement_cost = zeros(total_range_state,total_no_robots);
mean_avg_comm_cost = zeros(1,total_no_robots); 
range_state_avg_comm_cost = zeros(total_range_state,total_no_robots);
mean_LL = zeros(1,total_no_robots); 
range_state_LL= zeros(total_range_state,total_no_robots);

simulation_parameters;
initialization;

for range_state = 1:10
rng(range_state)

fprintf('range_state=%d\n',range_state)
for total_no_robotss = 1: total_no_robots
    time_index = 1;
    time = 1;
fprintf('total no robots=%d\n',total_no_robotss)
[neighbor_robo_vector] = ...
    neighbor_local_positioning(total_no_robotss,communication_radius ,x_area,y_area,width,range_state);

while time <= total_time
    
    while (time_index <= limit)
fprintf('time_index=%d\n',time_index)
        for robo_index = 1: total_no_robotss
             fprintf('robo_index=%d\n',robo_index)      
            variance_;
            
            if (mod(time_index,update_time_period) == 0) && (robo_index == total_no_robotss)
                
                globalestimate_;%global estimate of scale and shape
                
            else
                
                observed_lifetime_local_data;%collecting failure data and running mle on data
                
            end
            
            optimization_;
            
            age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
            
        end
               
        time_index = time_index + 1
        
    end
    limit = limit + update_time_period %parameter update to server time index
    time  = time_index + 1%system time index
    time_index;
end

results;

end

range_state_mean_outage(range_state,:) = mean_outage(:)';
save('range_state_mean_outage');

range_state_data_count(range_state,:) = sum(data_count,1);
save('range_state_data_count');

range_state_variance(range_state,:) = mean_variance(:)';
save('range_state_variance'); 

range_state_optimalcost(range_state,:) = mean_optimalcost(:)';
save('range_state_optimalcost'); 

range_state_avg_replacement_cost(range_state,:) = mean_avg_replacement_cost(:)';
save('range_state_avg_replacement_cost'); 

range_state_avg_comm_cost(range_state,:) = mean_avg_comm_cost(:)';
save('range_state_avg_comm_cost'); 

range_state_LL(range_state,:) = mean_LL(:)';
save('range_state_LL'); 
end