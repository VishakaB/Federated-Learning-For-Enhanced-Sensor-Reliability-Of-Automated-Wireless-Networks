%global estimate
% for robo_index = 1:total_no_robots
% estshape{robo_index} = mean(estshape{robo_index}(:));
% estscale{robo_index} = mean(estscale{robo_index}(:));
% end

for robo_index = 1:total_no_robots

    estshape(robo_index) = estshape_log{robo_index}(end);
    estscale(robo_index) = estscale_log{robo_index}(end);
    
end

estshape = mean(estshape);
estscale = mean(estscale);
LL(time_index,robo_index) = log((estshape/estscale) * (time_index./estscale) .^ (estshape-1) .*exp (- (time_index ./estscale).^estscale)./( 1 - exp ( -(maximum_lifetime/estscale)^estscale)));
data_count(time_index,robo_index) = length(observed_lifetime_logFL{robo_index}(:));