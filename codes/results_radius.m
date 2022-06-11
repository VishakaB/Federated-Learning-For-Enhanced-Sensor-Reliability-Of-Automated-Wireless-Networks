
mean_outageFL(communication_radius) =mean(mean(outage,2),1);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_varianceFL(communication_radius) = mean(mean(variance,2),1);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

data_count_FL(communication_radius) = sum(sum(data_count,2)); 
% save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costFL(communication_radius) =  mean(mean(optimal_cost,2),1);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costFL(communication_radius) = mean(mean(avg_replacement_cost,2),1);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costFL(communication_radius)  =  mean(mean(avg_comm_cost,2),1);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

mean_LL_FL(communication_radius) =mean(mean(LL,2),1);
% save(sprintf('meRan_LL_FL%d',total_no_robots), 'mean_LL_FL');

figure(100) 
hold all
y3 = mean(variance,1);%ccdf variation with number of robots
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',2)
grid on;
grid minor;