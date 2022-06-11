mean_outagep_rng(range_state,:) = mean_outage_p(:);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_variancep_rng(range_state,:) = mean_variance_p(:);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

% data_count_p_rng(range_state,:) = data_count_p(:)
% % save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costp_rng(range_state,:) =  mean_optimal_cost_p(:);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costp_rng(range_state,:) = mean_avg_replacement_cost_p(:);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costp_rng(range_state,:)  = mean_avg_comm_cost_p(:);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

% mean_LL_p_rng(range_state,:) = mean_LL_p(:);
% save(sprintf('meRan_LL_FL%d',total_no_robots), 'mean_LL_FL');
