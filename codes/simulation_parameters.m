%simulation parameters

%robots
%total_no_robots =3;
x_area = 10;
y_area = 10;
width  = 20;
communication_radius = 10;

%time
limit = 2;
update_time_period = 2;
age_increment = 1;
time = 0;
time_index = 1;
total_time = 10; 

%sensors
sensors_array = 10;
maximum_lifetime = 10;
scale = 10;
shape = 2;
estshape = 1.3233;
estscale = 5.3413;

%reliability parameters
reliability_percentage = 0.8;
variance_error = 1;
variance_threshold = 1/(sensors_array*reliability_percentage);
% communication
maximum_power = 10;

%costs
sensor_val = 1;
communication_val = 1;
sensor_replacement_cost =  sensor_val*ones(sensors_array,1);

%determine neighbor robots
[neighbor_robo_vector] = ...
    neighbor_local_positioning(total_no_robots,communication_radius ,x_area,y_area,width,range_state);
