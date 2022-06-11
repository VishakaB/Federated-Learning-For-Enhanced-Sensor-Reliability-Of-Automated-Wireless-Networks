
mean_outageFL_rng(range_state,:) = mean_outageFL(:);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_varianceFL_rng(range_state,:) = mean_varianceFL(:);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

data_count_FL_rng(range_state,:) = data_count_FL(:);
% save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costFL_rng(range_state,:) =  mean_optimal_costFL(:);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costFL_rng(range_state,:) = mean_avg_replacement_costFL(:);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costFL_rng(range_state,:)  = mean_avg_comm_costFL(:);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

mean_LL_FL_rng(range_state,:) = mean_LL_FL(:);
% save(sprintf('meRan_LL_FL%d',total_no_robots), 'mean_LL_FL');

% figure(100) 
% hold all
% y3 = mean(variance,1);%ccdf variation with number of robots
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,1)