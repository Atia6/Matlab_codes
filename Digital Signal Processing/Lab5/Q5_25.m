T = 1.0;
wa = 0:(pi/T)/511:(pi/T);
Lwa = length(wa);
Hra = T*ones(1, length(wa));

Hza = zeros(1,Lwa);
Hza(1) = 1;
