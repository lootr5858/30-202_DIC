%%% constants %%%
% nmos
vto_n = 0.6566;
kn    = (1.9647e-4) * 4;

% pmos
vto_p = - 0.9213;
vto_pa = abs(vto_p);
kp    = (4.8740e-5) * 4 * 2;

% inverter
vdd = 3.8;
kr  = kn / kp;

% Q2
vth = (vto_n + sqrt(1 / kr) * (vdd - vto_pa)) / (1 + sqrt(1 / kr))

%%% vil & voh sim eqn %%%
syms vil_m voh_m
eqn1 = (kn/2) * ((vil_m - vto_n)^2) == (kp/2) * (2 * (vdd - vil_m - vto_pa) * (vdd - voh_m) - ((vdd - voh_m)^2));
eqn2 = vil_m == (2 * voh_m - vto_pa - vdd + kr * vto_n) / (1 + kr);

solution = solve([eqn1, eqn2], [vil_m, voh_m]);
sol_vil = double(solution.vil_m);
sol_voh = double(solution.voh_m);

%%% vih & vol sim eqn %%%
syms vih_m vol_m
eqn3 = (kn / 2) * (2 * (vih_m - vto_n) * vol_m - (vol_m^2)) == (kp / 2) * ((vdd - vih_m - vto_pa)^2);
eqn4 = vih_m == (vdd - vto_pa + kr * (2* vol_m + vto_n)) / (1 + kr);

solution2 = solve([eqn3, eqn4], [vih_m, vol_m]);
sol_vih = double(solution2.vih_m);
sol_vol = double(solution2.vol_m);

% Q3
vil = sol_vil(2)
voh = sol_voh(2)

% Q4
vih = sol_vih(2)
vol = sol_vol(2)

% Q5
nmh = voh - vih

% Q6
nml = vil - vol

