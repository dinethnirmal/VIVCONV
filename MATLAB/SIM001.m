% constants
Cm = 1;
Cd = 1;
CL_sta_rms = 0.3; % average for stationary cylinder in subcritical Re domain <Mutlu page 369>
CL_amp_factor = 3; % C_l amplification due to VIV <Mutlu page 410>
% CL_rms = CL_amp_factor * CL_sta_rms
CL_rms = 0.9;  % Williamson 2004 max lift coefficient obtained at the synchronization region
St = 0.2;
k = 200;
c_st = 0;

% gear train
r1 = 0.02;
r2 = 0.01;

% cylinder
rho_c = 2000; % kg/m3
D = 0.08;
corr_l = 4;
L = D*corr_l;

% water
rho_w = 1000;
m_h = Cm * rho_w*L* (pi*D^2)/4;
m = rho_c *L* (pi*D^2)/4;

M = m + m_h;

% motor
kt = 0.032; % Nms/rad
R_t = 100; % ohm
c_gen = kt^2/(r2^2*R_t);
c = c_st + c_gen;


omega_n = sqrt(k/M);
fn = omega_n/(2*pi);
Vr = 11;
U = Vr*(fn*D);
fv = St*U/D;
% omega_v = omega_n;
% f_v = omega_v/(2*pi);
% U = f_v*D/St;

c2 = rho_w*Cd*D*L/2;
F0 = rho_w*D*U^2*L*sqrt(2)*CL_rms/2;