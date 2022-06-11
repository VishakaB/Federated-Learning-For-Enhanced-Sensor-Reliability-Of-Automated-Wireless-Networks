
%initialization
%robot index = column
%sensor index = row

age = cell(total_time,total_no_robots);%cell of ages of robots with time
lifetime= cell(1,total_no_robots);%cell of ages of robots with time
estshape_log = cell(1,total_no_robots);
estscale_log = cell(1,total_no_robots);
estshape_log_CL = zeros(1,total_time);
estscale_log_CL = zeros(1,total_time);
burnt = cell(total_time,total_no_robots);
outage = zeros(total_time,total_no_robots);
variance = zeros(total_time,total_no_robots);
% data_count = zeros(total_time,total_no_robots);
data_count_CL = zeros(total_time,1);
optimal_cost = zeros(total_time,total_no_robots);
avg_replacement_cost = zeros(total_time,total_no_robots);
avg_comm_cost = zeros(total_time,total_no_robots);
LL = zeros(total_time,total_no_robots);
LL_CL = zeros(total_time,total_no_robots);
observed_lifetime_log_CL  = zeros(1,1);
observed_lifetime_logFL = cell(1,total_no_robots);

for robo_index = 1: total_no_robots %lifetime of sensors of each robot
    
    lifetime_all{robo_index} = lifetime_robodata(1,1)';%assuming lifetimes of sensors of robots are different
    new{robo_index} = lifetime_all{robo_index}(sensors_array+1:...
        length(lifetime_all{robo_index}));
    
end

for robo_index = 1:total_no_robots %initializing ages and lifetime of sensors in the sensors array
    time_index = 1;
    age{time_index,robo_index} =...
        lifetime_all{robo_index}(1:sensors_array).*rand(sensors_array,1);
    lifetime{time_index,robo_index} =...
        lifetime_all{robo_index}(1:sensors_array);
end

for robo_index = 1: total_no_robots%replacing burnt sensors at initial state in the sensors array( at time = 0)
    time_index = 1;
    lifetime{time_index,robo_index} = lifetime_all{robo_index}(1:sensors_array);
    burnt{time_index,robo_index}=   age{time_index,robo_index} > ...
        lifetime{time_index,robo_index};
    
    if sum(burnt{time_index,robo_index}) >= 1
        lifetime{time_index,robo_index}(burnt{robo_index} == 1) = ...
            new{robo_index}(1:sum(burnt{robo_index}));
        age{time_index,robo_index}(burnt{robo_index} == 1) = 0;
        new{robo_index}(1:sum(burnt{robo_index})) = [];
    end
    
end


