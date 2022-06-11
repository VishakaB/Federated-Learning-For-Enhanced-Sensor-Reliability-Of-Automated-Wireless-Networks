
function lifetimesamples = lifetime_robodata(robo_index,n)
%lifetime data 
% n = robo_index + 111;
rng(n)
%lifetime data 
% scale   = 50;
scale     = 10;
shape     = 2;
maximum_lifetime = 10;

% index = 0.5 * lifetime_data
index           = 100000;
N = index;
% lifetime_data  =  bathtub_samples_new(index,scale,shape,maximum_lifetime,n);
lifetime_data1   =  weibul1(index,scale,shape,maximum_lifetime,n);
lifetime_data2   =  weibul2(index,scale,shape,maximum_lifetime,n);

lifetime_data    = lifetime_data2(randperm(N));

lifetimesamples = lifetime_data;
end