% range_state_estH
mean_outageestH_rng(range_state,:) = mean_outage_estH(:);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_varianceestH_rng(range_state,:) = mean_variance_estH(:);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

% data_count_p_rng(range_state,:) = data_count_estH(:)
% % save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costestH_rng(range_state,:) =  mean_optimal_cost_estH(:);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costestH_rng(range_state,:) = mean_avg_replacement_cost_estH(:);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costestH_rng(range_state,:)  = mean_avg_comm_cost_estH(:);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

mean_LL_estH_rng(range_state,:) = mean_LL_estH(:);
% save(sprintf('meRan_LL_estH%d',total_no_robots), 'mean_LL_FL');
