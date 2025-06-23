% tuned parameters

% upper branch
epsilon = 0.05;
A = 4;
C_y1 = 0.3842;
C_x0 = 1.1856;
St = 0.2;

% lower branch
% epsilon = 0.7;
% A = 12;
% C_y1 = 0.3842;
% C_x0 = 1.1856;
% St = 0.1932;

% system parameters
b = 1;
k = 280;

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
% U = 0.4;

% non-dim
Vn = 5.5;
U = Vn*fn*D;
fs = St*U/D;
omega_s = 2*pi*fs;
% Omega_n = omega_n/omega_s;
Omega_n = 1/(St*Vn);
zeta = b/(2*omega_n*M);
m_star = m/(pi*rho_w*D^2 * L/4);
% m_star = 2.4;

P = (m_star + Cm)*2*pi^3*St^2;

