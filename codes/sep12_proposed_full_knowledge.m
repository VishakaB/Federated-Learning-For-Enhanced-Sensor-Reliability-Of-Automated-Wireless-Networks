clear all
clc

total_states = 3;
%data_count = zeros(1,50);
target_robots = 4;
mean_outage_p = zeros(1,target_robots);
mean_variance_p =zeros(1,target_robots); %average variance of the system per time unit
mean_optimal_cost_p = zeros(1,target_robots);
mean_avg_replacement_cost_p = zeros(1,target_robots);
mean_avg_comm_cost_p = zeros(1,target_robots);
mean_LL_p = zeros(1,target_robots);

mean_outagep_rng = zeros(total_states,target_robots);
mean_variancep_rng = zeros(total_states,target_robots);
data_count_p_rng = zeros(total_states,target_robots);
mean_optimal_costp_rng = zeros(total_states,target_robots);
mean_avg_replacement_costp_rng = zeros(total_states,target_robots);
meamean_LL_p_rng = zeros(total_states,target_robots);

for range_state = 1:total_states
    
rng(range_state); 

for total_no_robots  = 1:target_robots
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


% fprintf('total_robots=%d\n',total_no_robots)
simulation_parameters;
initialization;

while time_index <= total_time
%     fprintf('time_index=%d\n',time_index)
%      fprintf('time_index=%d\n',time_index)
    for robo_index = 1: total_no_robots
%         fprintf('robo_index=%d\n',robo_index)
            neighbor_robo = neighbor_robo_vector(robo_index);
            decision_com  = zeros(neighbor_robo,1);
        
        variance_;
        
%         estshape =  1.3233;
%         estscale =  5.3413;
%        LL_estH(time_index,robo_index) = ...
%        log((estshape/estscale) * (time_index./estscale) .^ (estshape-1) .*exp (- (time_index ./estscale).^estscale)./( 1 - exp ( -(maximum_lifetime/estscale)^estscale)));
       optimization_full_knowledge;
        
       age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
        
    end
    
    time_index = time_index + 1;

    
end

results_p;

end

range_state_p;
end
result_plots_p;