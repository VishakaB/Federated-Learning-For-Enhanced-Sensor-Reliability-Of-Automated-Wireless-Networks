mean_outage_ex(communication_radius) = mean(mean(outage,2),1);%average outage probability of the system per time unit
save(sprintf('mean_outage_ex%d', total_no_robots), 'mean_outage_ex');

mean_variance_ex(communication_radius) = mean(mean(variance,2),1);%average variance of the system per time unit
save(sprintf('mean_variance_ex%d', total_no_robots), 'mean_variance_ex');

mean_optimal_cost_ex(communication_radius) = mean(mean(avg_replacement_cost,2),1);
save(sprintf('optimal_cost__ex%d',total_no_robots), 'mean_optimal_cost_ex');

figure(100) 
hold all
mean(variance,1);
y3 = mean(variance,1);%ccdf variation with number of robots
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'cd--','LineWidth',2)
grid on;
grid minor;