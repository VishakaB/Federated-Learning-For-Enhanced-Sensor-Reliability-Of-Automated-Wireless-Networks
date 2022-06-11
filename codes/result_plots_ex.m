%result_plots_FL
figure(5)
hold all
y3 = mean_variance_ex;%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'cd-','LineWidth',1)
hold on
p = polyfit(x3,myccdf,6);
f4 = polyval(p,x3);
plot(x3,f4,'b-','LineWidth',1)
xlabel('CCDF')
ylabel('measurement variance')
grid on;
grid minor;

figure(6)
hold all
y3 =mean_outage_ex;%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'c--','LineWidth',1)
p = polyfit(x3, myccdf ,6);
f = polyval(p,x3);
hold on
plot(x3,f,'b-','LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;

figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean_optimal_cost_ex;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'c--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'c-','LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;

figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean_optimal_cost_ex;%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'c--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'c-','LineWidth',1)
hold on 
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;


figure(10)
hold on
x3 = 1:target_robots;
y3 = mean_outage_ex;
plot(1:target_robots ,mean_outage_ex,'b--','LineWidth',1)
p = polyfit(x3,y3,6);
f = polyval(p,x3);
hold on
plot(x3,f,'ko-','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;

figure(11)
hold on
plot(1:target_robots ,(mean_variance_ex - variance_threshold),'b-','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error')

% %result_plots_FL
% figure(5)
% hold all
% y3 = mean_variance_ex;%ccdf for 30 robots 
% [f,x3]= ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'cd-','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'b-')
% % axis([0  5  0  2])
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on;
% grid minor;
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 =(mean_outage_ex);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'cd-.','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'r-')
% % axis([0  5  0  2])
% xlabel('outage')
% ylabel('CCDF')
% grid on;
% grid minor;
% 
% figure(8)
% hold all
% y3 = ((mean_variance_ex) - variance_threshold);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'r-')
% % axis([0  5  0  2])
% xlabel('CCDF')
% ylabel('error')
% grid on
% grid minor
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean_optimal_cost_ex;%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'cd-.','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'r-')
% % axis([0  5  0  2])
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on;
% grid minor;
% 
% figure(11)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 =(mean_variance_ex);%ccdf for 30 robots 
% x3 = mean(avg_replacement_cost,2)
% plot(x3,y3,'kd-.','LineWidth',1)
% p = polyfit(x3,y3,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'ko-')
% xlabel('optimal cost')
% ylabel('variance')
% grid on
% grid minor