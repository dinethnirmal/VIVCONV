% ----------------------- tuned parameters -----------------------------

Vn = 6;

if Vn > 4 && Vn < 7
% upper branch
    epsilon = 0.05;
    A = 4;
    C_y1 = 0.3842;
    C_x0 = 1.1856;
    St = 0.2;
else
% lower branch
    epsilon = 0.7;
    A = 12;
    C_y1 = 0.3842;
    C_x0 = 1.1856;
    St = 0.1932;
end

% --------------------- system parameters -----------------------------

% motor params
r1 = 0.02;
r2 = 0.01;
kt = 0.1; % Nms/rad
R_t = 100; % ohm
c_gen = kt^2/(r2^2*R_t);


% oscillator
c_st = 1;               % structural damping
% c = c_st + c_gen;       % total viscous damping
c = 0;
k = 200;


rho_w = 1000;
D = 0.08;
L = 0.33;
Cm = 1;
m = 4 ;

ma = Cm*rho_w*L*pi*D^2/4;
M = m + ma;
omega_n = sqrt(k/M);
fn = omega_n/(2*pi);

% vortex shedding
U = Vn*fn*D;
fs = St*U/D;
omega_s = 2*pi*fs;
% Omega_n = omega_n/omega_s;
Omega_n = 1/(St*Vn);
zeta = c/(2*omega_n*M);
m_star = m/(pi*rho_w*D^2 * L/4);


P = rho_w*D*L*U^2/(2*M);


