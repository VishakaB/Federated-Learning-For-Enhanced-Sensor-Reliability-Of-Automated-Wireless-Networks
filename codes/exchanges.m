function [pwr_alloc]  = exchanges(Pmax,channel,neighbor_robo,N0)

z             = zeros(neighbor_robo,1);
pwr_alloc = zeros(neighbor_robo,1);;
% Waterfilling Method
for S = 1:neighbor_robo
    wf_low = 0;  % Fill in the initial bounds for the water levels
    wf_high = Pmax;
    while (abs(wf_low - wf_high) > 1e-10)
        % Complete the water filling algorith, i.e., 1. compute the water level from the current bounds; 2. compute
        % the power allocation; 3. adjust the water bounds according to the violation of the power constraints.
        
        wf = 0.5 * (wf_low + wf_high);
        
        pwr_alloc = max( 0, (wf - N0./abs(channel)));
        
        if sum(pwr_alloc) > Pmax
            wf_high = wf;
        else
            wf_low = wf;
        end
        
    end
    
    pwr_alloc;
end
end