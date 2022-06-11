clear all
clc
total_states = 3;
% range_state = 1;
% rng(range_state);
%data_count = zeros(1,50);
target_robots = 10;

mean_outage_estH = zeros(1,target_robots);
mean_variance_estH = zeros(1,target_robots); %average variance of the system per time unit
mean_optimal_cost_estH = zeros(1,target_robots);
mean_avg_replacement_cost_estH = zeros(1,target_robots);
mean_avg_comm_cost_estH = zeros(1,target_robots);
mean_LL_estH = zeros(1,target_robots);

mean_outageestH_rng = zeros(total_states,target_robots);
mean_varianceestH_rng = zeros(total_states,target_robots);
data_count_estH_rng = zeros(total_states,target_robots);
mean_optimal_costestH_rng = zeros(total_states,target_robots);
mean_avg_replacement_costestH_rng = zeros(total_states,target_robots);
meamean_LL_estH_rng = zeros(total_states,target_robots);

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
    
    % total_time = 10;
%     fprintf('total_robots=%d\n',total_no_robots)
    simulation_parameters;
    initialization;
estshape =  1.3233;
estscale =  5.3413;
    
    while time_index <= total_time
        %     fprintf('time_index=%d\n',time_index)
        %      fprintf('time_index=%d\n',time_index)
        for robo_index = 1:total_no_robots 
            %         fprintf('robo_index=%d\n',robo_index)
            neighbor_robo = neighbor_robo_vector(robo_index);
            decision_com  = zeros(neighbor_robo,1);
            
            variance_;
                        
            LL_estH(time_index,robo_index) = ...
                log((estshape/estscale) * (time_index./estscale) .^ (estshape-1) .*exp (- (time_index ./estscale).^estscale)./( 1 - exp ( -(maximum_lifetime/estscale)^estscale)));
            optimization_;
            
            age{time_index+1,robo_index} = age{time_index,robo_index} + age_increment;
            
        end
        
        time_index = time_index + 1;
        
    end
    
    results_estH;
end

range_state_estH;

end

result_plots_estH;

