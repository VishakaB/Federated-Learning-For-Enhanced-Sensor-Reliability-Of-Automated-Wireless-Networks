mean_outageCL_rng(range_state,:) = mean_outage(:);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_varianceCL_rng(range_state,:) = mean_variance(:);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

data_count_CL_rng(range_state,:) = data_count(:);
% save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costCL_rng(range_state,:) =  mean_optimal_cost(:);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costCL_rng(range_state,:) = mean_avg_replacement_cost(:);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costCL_rng(range_state,:)  = mean_avg_comm_cost(:);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

mean_LL_CL_rng(range_state,:) = mean_LL_CL(:);
% save(sprintf('meRan_LL_FL%d',total_no_robots), 'mean_LL_FL');
