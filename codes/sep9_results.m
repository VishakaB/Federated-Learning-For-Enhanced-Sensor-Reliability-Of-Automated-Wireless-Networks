no_of_robots = [15 20 25 30];
mean_variance_FL = [0.067060396 0.066683168 0.06680033 0.0638033];
mean_variance_CL = [0.066114333 0.066227667 0.066692 0.063387667];
mean_variance_estimatedH = [0.0728450000000000,0.0724480000000000,0.0728450000000000,0.0727360000000000];


figure(1)

plot(no_of_robots,mean_variance_FL,'k*-','LineWidth',2)
hold all
plot(no_of_robots,mean_variance_CL,'k--','LineWidth',2)
plot(no_of_robots,mean_variance_estimatedH,'kp-','LineWidth',2)
grid on 
grid minor 
xlabel('Robo density of the network')
ylabel('variance of sensor measurement reliability')


