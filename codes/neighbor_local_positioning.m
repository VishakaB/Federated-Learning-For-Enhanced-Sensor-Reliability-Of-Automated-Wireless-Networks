function[neighbor_robo] = neighbor_local_positioning(total_no_robots,R0,x_area,y_area,width,range)
% outputs neighbor robo vector    
rng(range)
    xRandom = width * rand(1, total_no_robots) - width / 2;
    yRandom = width * rand(1, total_no_robots) - width / 2;


    for xIndex = 1 : total_no_robots

      for yIndex = xIndex : length(yRandom)
        distances(xIndex, yIndex) = sqrt(((xRandom(xIndex)-xRandom(yIndex))^2 + (yRandom(xIndex)-yRandom(yIndex))^2));
      end
    end


    neighbor_robo = zeros(total_no_robots,1);

    for robo_index = 1: total_no_robots
        for i = 1:size(distances,2)

            if (distances(robo_index,i) < R0)&& (distances(robo_index,i)~= 0)
                neighbor_robo(robo_index) = neighbor_robo(robo_index) +1 ;
            end 

    end
end
neighbor_robo;
end