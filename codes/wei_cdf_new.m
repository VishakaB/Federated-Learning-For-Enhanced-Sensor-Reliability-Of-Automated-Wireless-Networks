function [y] = wei_cdf_new(x,k,lam,T)

% y1= ( 1 - exp( -(x ./ lam) .^ k) )/ ( 1 - exp( - ( T / lam ) ^ k ) );
% y2 = ( exp(- ( (T- x) / lam ).^ k ) ) / ( 1 - exp( - (T / lam ) ^ k ) );

y2 = ( 1 - exp( -(x ./ lam) .^ k) )/ ( 1 - exp( - ( T / lam ) ^ k ) );

y  = (y2);

end