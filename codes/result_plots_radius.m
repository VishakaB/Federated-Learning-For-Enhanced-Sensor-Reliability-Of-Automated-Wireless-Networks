
%result_plots_FL
figure(1)
hold all
plot(data_count_FL,mean_outageFL,'md-','LineWidth',1)
xlabel('data count')
ylabel('outage')
grid on;
grid minor;

figure(2)
hold all
plot(data_count_FL,mean_optimal_costFL,'md-','LineWidth',1)
xlabel('data count')
ylabel('mean_optimal_cost')
grid on;
grid minor;

figure(3)
hold all
plot(data_count_FL,mean_avg_replacement_costFL,'md-','LineWidth',1)
hold on
plot(data_count_FL,mean_avg_comm_costFL,'md-','LineWidth',1)
xlabel('data count')
ylabel('avg_cost')
grid on;
grid minor;

figure(4)
hold all
plot(data_count_FL,-(mean_LL_FL),'md-','LineWidth',1)
xlabel('data count')
grid on;
grid minor;

figure(5)
hold all
y3 = mean_varianceFL;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-','LineWidth',1)
xlabel('CCDF')
ylabel('measurement variance')
grid on;
grid minor;

figure(6)
hold all
hold all
[mean_avg_replacement_costFL,sortIdx]=sort(mean_avg_replacement_costFL,'descend');
mean_avg_comm_costFL = mean_avg_comm_costFL(sortIdx);
plot(mean_avg_replacement_costFL,mean_avg_comm_costFL,'md-','LineWidth',1)
xlabel('avg replacement cost')
ylabel('avg comm cost')
grid on;
grid minor;

figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean_outageFL;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
xlabel('outage')
ylabel('CCDF')
grid on;
grid minor;

figure(8)
hold all
plot(1:maximum_radius,mean_varianceFL,'md-.','LineWidth',1);
xlabel('no robots')
ylabel('variance')
grid on;
grid minor;

figure(9)
hold all
% plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
y3 = mean_optimal_costFL;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;

figure(10)
hold all
% plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
y3 = mean_avg_replacement_costFL;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'md-.','LineWidth',1)
hold on 
y3 = mean_avg_comm_costFL;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'mo--','LineWidth',1)
xlabel('avg cost')
ylabel('CCDF')
grid on;
grid minor;
% plot(1:target_robots,mean_avg_comm_cost_p,'r*-.','LineWidth',2);
% hold all
% plot(1:target_robots,mean_avg_replacement_cost,'kd-.','LineWidth',2);
% hold on 
% plot(1:target_robots,mean_avg_comm_cost,'kd-.','LineWidth',2);

figure(11)
hold all
plot(1:maximum_radius,abs(mean_LL_FL),'md-.','LineWidth',1)
xlabel('no robots')
ylabel('LL')
grid on;
grid minor;