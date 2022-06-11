% %result_plots_CL
% figure(1)
% hold all
% plot(mean(data_count_CL_rng,1),abs(mean(mean_varianceCL_rng,1)- variance_threshold),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('outage')
% grid on
% grid minor
% 
% figure(2)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_outageCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('outage')
% grid on
% grid minor
% 
% figure(3)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_optimal_costCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('mean_optimal_cost')
% grid on
% grid minor
% 
% figure(4)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_avg_replacement_costCL_rng,1),'gd-','LineWidth',1)
% hold on
% plot(mean(data_count_CL_rng,1),mean(mean_avg_comm_costCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('avg_cost')
% grid on
% grid minor
% 
% figure(5)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_LL_CL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('LL')
% grid on
% grid minor
% 
% figure(6)
% hold all
% hold all
% mean_avg_comm_costCL_rng = mean(mean_avg_comm_costCL_rng,1);
% [mean_avg_replacement_costCL_rng,sortIdx]=sort(mean(mean_avg_replacement_costCL_rng,1),'descend');
% mean_avg_comm_costCL_rng = mean_avg_comm_costCL_rng(sortIdx);
% plot(mean_avg_replacement_costCL_rng,mean_avg_comm_costCL_rng,'gd-','LineWidth',1)
% xlabel('avg replacement cost')
% ylabel('avg comm cost')
% grid on
% grid minor
% 
% figure(7)
% hold all
% y3 = mean(mean_varianceCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-','LineWidth',1)
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on
% grid minor
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_varrianceCL_rng,1)- variance_threshold;%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(8)
% hold all
% y3 = mean(mean_outageCL_rng,1);
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(10)
% hold all
% % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% hold on 
% y3 = mean(mean_avg_comm_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'go--','LineWidth',1)
% xlabel('avg cost')
% ylabel('CCDF')
% grid on
% grid minor
% % plot(1:target_robots,mean_avg_comm_cost_p,'r*-.','LineWidth',2);
% % hold all
% % plot(1:target_robots,mean_avg_replacement_cost,'kd-.','LineWidth',2);
% % hold on 
% % plot(1:target_robots,mean_avg_comm_cost,'kd-.','LineWidth',2);
% 
% 
% % 
% % %result_plots_CL
% % figure(1)
% % hold all
% % plot(data_count,mean_outage,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('outage')
% % 
% % figure(2)
% % hold all
% % plot(data_count,mean_optimal_cost,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('mean_optimal_cost')
% % 
% % figure(3)
% % hold all
% % plot(data_count,mean_avg_replacement_cost,'g+:','LineWidth',2)
% % hold on
% % plot(data_count,mean_avg_comm_cost,'g+:','LineWidth',2)
% % xlabel('data count')
% % ylabel('avg_cost')
% % 
% % figure(4)
% % hold all
% % plot(data_count,abs(mean_LL_CL),'g+:','LineWidth',2)
% % xlabel('data count')
% % 
% % figure(5)
% % hold all
% % y3 = mean_variance;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-','LineWidth',2)
% % xlabel('CCDF')
% % ylabel('measurement variance')
% % 
% % figure(6)
% % hold all
% % [mean_avg_replacement_cost,sortIdx]=sort(mean_avg_replacement_cost,'descend');
% % mean_avg_comm_cost = mean_avg_comm_cost(sortIdx);
% % plot(mean_avg_replacement_cost,mean_avg_comm_cost,'gd-','LineWidth',2)
% % xlabel('avg replacement cost')
% % ylabel('avg comm cost')
% % 
% % figure(7)
% % hold all
% % % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% % y3 = mean_outage;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('outage')
% % ylabel('CCDF')
% % 
% % figure(8)
% % hold all
% % plot(1:target_robots,mean_variance,'gd-.','LineWidth',2);
% % xlabel('no robots')
% % ylabel('variance')
% % 
% % 
% % figure(9)
% % hold all
% % % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% % y3 = mean_optimal_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('optimal cost')
% % ylabel('CCDF')
% % 
% % 
% % figure(10)
% % hold all
% % % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% % y3 = mean_avg_replacement_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % hold on 
% % y3 = mean_avg_comm_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'go--','LineWidth',2)
% % xlabel('avg cost')
% % ylabel('CCDF')
% % 
% % figure(11)
% % hold all
% % plot(1:target_robots,abs(mean_LL_CL),'gd-.','LineWidth',2)
% % xlabel('no robots')
% % ylabel('LL')
% % 
% %result_plots_CL
% 
% figure(1)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_outageCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('outage')
% grid on
% grid minor
% 
% figure(2)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_optimal_costCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('mean_optimal_cost')
% grid on
% grid minor
% 
% figure(3)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_avg_replacement_costCL_rng,1),'gd-','LineWidth',1)
% hold on
% plot(mean(data_count_CL_rng,1),mean(mean_avg_comm_costCL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('avg_cost')
% grid on
% grid minor
% 
% figure(4)
% hold all
% plot(mean(data_count_CL_rng,1),mean(mean_LL_CL_rng,1),'gd-','LineWidth',1)
% xlabel('data count')
% ylabel('LL')
% grid on
% grid minor
% 
% figure(6)
% hold all
% hold all
% mean_avg_comm_costCL_rng = mean(mean_avg_comm_costCL_rng,1);
% [mean_avg_replacement_costCL_rng,sortIdx]=sort(mean(mean_avg_replacement_costCL_rng,1),'descend');
% mean_avg_comm_costCL_rng = mean_avg_comm_costCL_rng(sortIdx);
% plot(mean_avg_replacement_costCL_rng,mean_avg_comm_costCL_rng,'gd-','LineWidth',1)
% xlabel('avg replacement cost')
% ylabel('avg comm cost')
% grid on
% grid minor
% 
% figure(5)
% hold all
% y3 = mean(mean_varianceCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-','LineWidth',1)
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on
% grid minor
% 
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_outageCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(8)
% hold all
% plot(1:total_radius,mean(mean_varianceCL_rng,1),'gd-.','LineWidth',1);
% xlabel('no robots')
% ylabel('variance')
% grid on
% grid minor
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(10)
% hold all
% % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% hold on 
% y3 = mean(mean_avg_comm_costCL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'go--','LineWidth',1)
% xlabel('avg cost')
% ylabel('CCDF')
% grid on
% grid minor
% % plot(1:target_robots,mean_avg_comm_cost_p,'r*-.','LineWidth',2);
% % hold all
% % plot(1:target_robots,mean_avg_replacement_cost,'kd-.','LineWidth',2);
% % hold on 
% % plot(1:target_robots,mean_avg_comm_cost,'kd-.','LineWidth',2);
% 
% figure(11)
% hold all
% plot(1:total_radius,abs(mean(mean_LL_CL_rng,1)),'gd-.','LineWidth',1)
% xlabel('no robots')
% ylabel('LL')
% grid on
% grid minor
% 
% % 
% % %result_plots_CL
% % figure(1)
% % hold all
% % plot(data_count,mean_outage,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('outage')
% % 
% % figure(2)
% % hold all
% % plot(data_count,mean_optimal_cost,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('mean_optimal_cost')
% % 
% % figure(3)
% % hold all
% % plot(data_count,mean_avg_replacement_cost,'g+:','LineWidth',2)
% % hold on
% % plot(data_count,mean_avg_comm_cost,'g+:','LineWidth',2)
% % xlabel('data count')
% % ylabel('avg_cost')
% % 
% % figure(4)
% % hold all
% % plot(data_count,abs(mean_LL_CL),'g+:','LineWidth',2)
% % xlabel('data count')
% % 
% % figure(5)
% % hold all
% % y3 = mean_variance;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-','LineWidth',2)
% % xlabel('CCDF')
% % ylabel('measurement variance')
% % 
% % figure(6)
% % hold all
% % [mean_avg_replacement_cost,sortIdx]=sort(mean_avg_replacement_cost,'descend');
% % mean_avg_comm_cost = mean_avg_comm_cost(sortIdx);
% % plot(mean_avg_replacement_cost,mean_avg_comm_cost,'gd-','LineWidth',2)
% % xlabel('avg replacement cost')
% % ylabel('avg comm cost')
% % 
% % figure(7)
% % hold all
% % % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% % y3 = mean_outage;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('outage')
% % ylabel('CCDF')
% % 
% % figure(8)
% % hold all
% % plot(1:target_robots,mean_variance,'gd-.','LineWidth',2);
% % xlabel('no robots')
% % ylabel('variance')
% % 
% % 
% % figure(9)
% % hold all
% % % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% % y3 = mean_optimal_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('optimal cost')
% % ylabel('CCDF')
% % 
% % 
% % figure(10)
% % hold all
% % % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% % y3 = mean_avg_replacement_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % hold on 
% % y3 = mean_avg_comm_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'go--','LineWidth',2)
% % xlabel('avg cost')
% % ylabel('CCDF')
% % 
% % figure(11)
% % hold all
% % plot(1:target_robots,abs(mean_LL_CL),'gd-.','LineWidth',2)
% % xlabel('no robots')
% % ylabel('LL')
% % 


%result_plots_FL
figure(1)
hold all
x3 = sum(data_count_CL_rng,1);
y3 = abs(mean(mean_varianceCL_rng,1) - variance_threshold);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'g--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'g-','LineWidth',1)
xlabel('data count')
ylabel('error')
grid on
grid minor

figure(2)
hold all
x3 = sum(data_count_CL_rng,1);
y3 = mean(mean_outageCL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'g--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'g-','LineWidth',1)
xlabel('data count')
ylabel('losses')
grid on
grid minor

figure(3)
hold all
x3 = sum(data_count_CL_rng,1);
y3 = mean(mean_avg_replacement_costCL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'g--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('sensor_cost')
grid on
grid minor

figure(4)
hold all
x3 = sum(data_count_CL_rng,1);
y3 = mean(mean_avg_comm_costCL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'g--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('comm_cost')
grid on
grid minor

% figure(4)
% hold all
% plot(mean(data_count_FL_rng,1),mean(mean_LL_FL_rng,1),'bd-','LineWidth',1)
% xlabel('data count')
% ylabel('LL')
% grid on
% grid minor

figure(5)
hold all
y4 = mean(mean_varianceCL_rng,1);%ccdf for 30 robots 
[f,x4]= ecdf(y4);
myccdf = 1-f;
plot(x4,myccdf,'g--')
hold on
p = polyfit(x4,myccdf,6);
f4 = polyval(p,x4);
plot(x4,f4,'k-','LineWidth',1)
xlabel('variance')
ylabel('ccdf')
grid on;
grid minor;

figure(6)
hold all
y3 = mean(mean_outageCL_rng,1);%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'g--','LineWidth',1)
p = polyfit(x3, myccdf ,6);
f = polyval(p,x3);
hold on
plot(x3,f,'g-','LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;
% 
figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costCL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'g--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'g-','LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;
% 
figure(8)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_comm_costCL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'g--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'g-','LineWidth',1)
hold on 
xlabel('comm cost')
ylabel('CCDF')
grid on;
% grid minor;
% 
figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costCL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'g--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'g-','LineWidth',1)
hold on 
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;



% figure(5)
% hold all
% hold all
% mean_avg_comm_costFL_rng = mean(mean_avg_comm_costFL_rng,1);
% [mean_avg_replacement_costFL_rng,sortIdx]=sort(mean(mean_avg_replacement_costFL_rng,1),'descend');
% mean_avg_comm_costFL_rng = mean_avg_comm_costFL_rng(sortIdx);
% plot(mean_avg_replacement_costFL_rng,mean_avg_comm_costFL_rng,'bd-','LineWidth',1)
% xlabel('avg replacement cost')
% ylabel('avg comm cost')
% grid on
% grid minor
% 
% figure(6)
% hold all
% y3 = mean(mean_varianceFL_rng,1) - variance_threshold;%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-','LineWidth',1)
% hold on 
% xline(0.125,'--k','LineWidth',1)
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on
% grid minor
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(8)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% hold on 
% y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'mo--','LineWidth',1)
% xlabel('avg cost')
% ylabel('CCDF')
% grid on
% grid minor

figure(10)
hold on
x3 = 1:target_robots;
y3 = mean(mean_outageCL_rng,1);
plot(1:target_robots ,mean(mean_outageCL_rng,1),'g-','LineWidth',1)
p = polyfit(x3,y3,6);
f = polyval(p,x3);
hold on
plot(x3,f,'g-','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;

figure(11)
hold on
plot(1:target_robots ,(mean(mean_varianceCL_rng,1) - variance_threshold),'g-','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error')