function sample_1 = weibul2(index,scale,shape,maximum_lifetime,n)
rng(n)
N      = 2*index;
u      = rand( 1 , N );

% s1     = u( 1 : N/2 );

s2     = u( N/2 + 1 : end);
% y1        = scale * ( - log( 1 -   s1 .* ( 1 - exp( -  (maximum_lifetime / scale ) ^ shape ) ) ) ) .^ ( 1/shape);
% sample_1  = y1;

% 
y2        = maximum_lifetime - scale * ( - log ( 1 - s2 .* ( 1 - exp( - (maximum_lifetime /scale) ^ shape ) ) ) ).^ (1/shape);
sample_1  = abs(y2);

% samples   = abs( [sample_1 , sample_2 ] );
end