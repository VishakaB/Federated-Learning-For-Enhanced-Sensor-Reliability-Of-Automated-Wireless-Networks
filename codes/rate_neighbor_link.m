function [neighbor_link_rate] = rate_neighbor_link(P_allocated,H,neighbor_robo,N0,bandwidth,number_resourceblocks)
SINR = zeros(neighbor_robo,1);

% SINR for each links
for i = 1:neighbor_robo
    if neighbor_robo > 1
            if i > 1
                SINR(i) = (P_allocated(i)*norm(H(i)))/(N0 +...
                    ((H(1:i-1)).^2)'*P_allocated(1:i-1) + ...
                    ((H(i+1:length(H))).^2)'*P_allocated(i+1:length(H)));
            else
                SINR(i) = (P_allocated(i)*norm(H(i)))/( N0 + ...
                    ((H(i+1:length(H))).^2)'*P_allocated(i+1:length(H)));
            end
    else 
            SINR(i) = (P_allocated(i)*norm(H(i)))/N0;
    end
end

%rates 
neighbor_link_rate = log(1+SINR) ;
end