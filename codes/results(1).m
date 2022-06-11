
mean_outageFL(total_no_robots) =mean(mean(outage,2),1);%average outage probability of the system per time unit
% save(sprintf('mean_outageFL_%d', total_no_robots), 'mean_outageFL');

mean_varianceFL(total_no_robots) = mean(mean(variance,2),1);%average variance of the system per time unit
% save(sprintf('mean_varianceFL_%d', total_no_robots), 'mean_varianceFL');

data_count_FL(total_no_robots) = sum(sum(data_count,2),1); 
% save(sprintf('data_countFL_%d',total_no_robots), 'data_count_FL');

mean_optimal_costFL(total_no_robots) =  mean(mean(optimal_cost,2),1);
% save(sprintf('optimal_costFL_%d',total_no_robots), 'mean_optimal_costFL');

mean_avg_replacement_costFL(total_no_robots) = mean(mean(avg_replacement_cost,2),1);
% save(sprintf('avg_replacement_costFL_%d',total_no_robots), 'mean_avg_replacement_costFL');

mean_avg_comm_costFL(total_no_robots)  =  mean(mean(avg_comm_cost,2),1);
% save(sprintf('avg_comm_costFL_%d',total_no_robots), 'mean_avg_comm_costFL');

mean_LL_FL(total_no_robots) = abs(mean(mean(LL,2),1));
% save(sprintf('meRan_LL_FL%d',total_no_robots), 'mean_LL_FL');

% figure(100) 
% hold all
% y3 = mean(variance,1);%ccdf variation with number of robots
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'m--','LineWidth',1)

% figures
% figure(1)%outage vs data count
% y = mean(outage,2);
% x = sum(data_count,2);
% plot(x,y)
% 
% P = polyfit(x,y,1); 
% xfit = 0: max(x); 
% yfit = polyval(P,xfit); 

% hold on
% plot(xfit,yfit,'--')
% 
% figure(2)%optimal cost vs data count
% y2 = mean(optimal_cost,2);
% x2 = sum(data_count,2);
% plot(x2,y2)
% 
% P2 = polyfit(x2,y2,1); 
% xfit2 = 0:max(x2); 
% yfit2 = polyval(P2,xfit2); 
% 
% hold on
% plot(xfit2,yfit2,'--')
% 
% figure(3)%ccdf of variance
% y3 = mean(variance,2);
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf)
% 
% figure(4)
% x4 = mean(avg_replacement_cost,2);
% y4 = mean(avg_comm_cost,2);
% plot(x4,y4)
% 
% P4 = polyfit(x4,y4,1); 
% xfit4 = 0:max(x4); 
% yfit4 = polyval(P4,xfit4); 
% hold on
% plot(xfit4,yfit4,'--')
% 
% figure(5)
% x5 = sum(avg_comm_cost,2);%number of communication links
% y5 = mean(outage,2);
% [x5,sortIdx] = sort(x5,'descend');
% % sort B using the sorting index
% y5 = y5(sortIdx);
% 
% plot(x5,y5)
% 
% P5 = polyfit(x5,y5,1); 
% xfit5 = 0:max(x5); 
% yfit5 = polyval(P5,xfit5); 
% hold on
% plot(xfit5,yfit5,'--')
% 
% figure(6)
% x6 = sum(data_count,2);%number of communication links
% y6 = abs(mean(LL,2));
% [x6,sortIdx] = sort(x6,'descend');
% % sort B using the sorting index
% y6 = y6(sortIdx);
% 
% plot(x6,y6)
% 
% P6 = polyfit(x6,y6,1); 
% xfit6 = 0:max(x6); 
% yfit6 = polyval(P6,xfit6); 
% hold on
% plot(xfit6,yfit6,'--')
% 
% figure(7)
% x7 = mean(data_count,2);%number of communication links
% y7 = abs(mean(LL,2));
% [x7,sortIdx] = sort(x7,'descend');
% % sort B using the sorting index
% y7 = y7(sortIdx);
% 
% plot(x7,y7)
% 
% P7 = polyfit(x7,y7,1); 
% xfit7 = 0:max(x7); 
% yfit7 = polyval(P7,xfit7); 
% hold on
% plot(xfit7,yfit7,'--')
% 
% figure(8)
% x8 = zeros(total_no_robots,1);
% y8 = zeros(total_no_robots,1);
% 
% for robo_index =  1: total_no_robots
% x8(robo_index) = mean(estshape_log{robo_index}(:));
% end
% 
% for robo_index = 1: total_no_robots
% y8(robo_index) = mean(estscale_log{robo_index}(:));
% end
% 
% [X,Y] = meshgrid(x8,y8);%number of communication links
% % 
% % F = outage;
% % surf(X,Y,F);

%saving variables 

% outage_(total_no_robots,:)= mean(outage,2)';
% save('outage_'); 
% mean(outage,2)%average outage probability of the system per time unit
% mean(variance,2)%average variance of the system per time unit
% sum(data_count,2)
% mean(optimal_cost,2)
% mean(avg_replacement_cost,2)
% mean(avg_comm_cost,2)
% mean(LL,2)
% 
% amp=10 ;
% fs=20500;  % sampling frequency
% duration=2;
% freq=100;
% values=0:1/fs:duration;
% a=amp*sin(2*pi* freq*values);
% sound(a);

% mean_outage(total_no_robotss) = mean(mean(outage,2));%
% save('mean_outage');    
% 
% data_count(total_no_robotss,:) = sum(data_count,2)';
% save('data_count');  
% 
% mean_variance(total_no_robotss) = mean(mean(variance,2));
% save('mean_variance'); 
% 
% mean_optimalcost(total_no_robotss) = mean(mean(optimal_cost,2));
% save('mean_optimalcost'); 
% 
% mean_avg_replacement_cost(total_no_robotss) = mean(mean(avg_replacement_cost,2));
% save('mean_avg_replacement_cost'); 
% 
% mean_avg_comm_cost(total_no_robotss) = mean(mean(avg_comm_cost,2));
% save('mean_avg_comm_cost'); 
% 
% mean_LL(total_no_robotss) = mean(mean(LL,2));
% save('mean_LL'); 



