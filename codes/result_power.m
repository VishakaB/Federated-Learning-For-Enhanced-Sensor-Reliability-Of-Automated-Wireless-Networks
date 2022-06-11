
%result_plots_FL
figure(1)
hold all
plot(mean(data_count_FL_rng,1),mean(mean_outageFL_rng,1),'md-','LineWidth',1)
xlabel('data count')
ylabel('outage')
grid on
grid minor

figure(2)
hold all
plot(mean(data_count_FL_rng,1),mean(mean_optimal_costFL_rng,1),'md-','LineWidth',1)
xlabel('data count')
ylabel('mean_optimal_cost')
grid on
grid minor

figure(3)
hold all
plot(mean(data_count_FL_rng,1),mean(mean_avg_replacement_costFL_rng,1),'md-','LineWidth',1)
hold on
plot(mean(data_count_FL_rng,1),mean(mean_avg_comm_costFL_rng,1),'md-','LineWidth',1)
xlabel('data count')
ylabel('avg_cost')
grid on
grid minor

figure(4)
hold all
plot(mean(data_count_FL_rng,1),mean(mean_LL_FL_rng,1),'md-','LineWidth',1)
xlabel('data count')
ylabel('LL')
grid on
grid minor

figure(5)
hold all
y3 = mean(mean_varianceFL_rng,1) - variance_threshold ;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-','LineWidth',1)
xlabel('measurement variance')
ylabel('CCDF')
grid on
grid minor

figure(6)
hold all
hold all
mean_avg_comm_costFL_rng = mean(mean_avg_comm_costFL_rng,1);
[mean_avg_replacement_costFL_rng,sortIdx]=sort(mean(mean_avg_replacement_costFL_rng,1),'descend');
mean_avg_comm_costFL_rng = mean_avg_comm_costFL_rng(sortIdx);
plot(mean_avg_replacement_costFL_rng,mean_avg_comm_costFL_rng,'md-','LineWidth',1)
xlabel('avg replacement cost')
ylabel('avg comm cost')
grid on
grid minor

figure(7)
hold all
% plot(1:target_power,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
xlabel('outage')
ylabel('CCDF')
grid on
grid minor

figure(8)
hold all
plot(1:total_radius,mean(mean_varianceFL_rng,1),'md-.','LineWidth',1);
xlabel('communication radius')
ylabel('variance')
grid on
grid minor

figure(9)
hold all
% plot(1:target_power,mean_optimal_cost,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
xlabel('optimal cost')
ylabel('CCDF')
grid on
grid minor

figure(10)
hold all
% plot(1:target_power,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
hold on 
y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'mo--','LineWidth',1)
xlabel('avg cost')
ylabel('CCDF')
grid on
grid minor

figure(11)
hold all
plot(1:total_radius,mean(mean_avg_comm_costFL_rng,1),'m*-.','LineWidth',1);
hold all
plot(1:total_radius,mean(mean_avg_replacement_costFL_rng,1),'md-.','LineWidth',1);
xlabel('communication radius')
ylabel('cost')
grid on
grid minor
% hold on 
% plot(1:target_power,mean_avg_comm_cost,'kd-.','LineWidth',2);

figure(12)
hold all
plot(1:total_radius,abs(mean(mean_LL_FL_rng,1)),'md-.','LineWidth',1)
xlabel('communication radius')
ylabel('LL')
grid on
grid minor