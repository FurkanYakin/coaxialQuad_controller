%%
%Quadcopter simulation variables

%% Constants

b=1.144e-8;        %Thrust coefficent
d=9.94e-10;          %Drug coefficent
m=0.284;        %Mass (kg)
l=0.1;         %Arm length (meter)

Ixx=1;
Iyy=1;          %Inertia moments (kgm^2)
Izz=1;

Ax=0;
Ay=0;           %Air drag coeff in each axis

K_emf=0.00255;        %motor coefficent (Vs/rad)
J=6.5e-7;            %Motor mass moment of inertia (kgm^2)
b_m=2.415e-6;          %Motor damping coefficient (Nms)
Kt=0.00255;           %Motor torque coefficient (Nm/A)
R=0.117;            %Motor rotor resistance (ohm)
L=1.17e-4;            %Motor rotor inductance (H)
omega_max=inf;  %motor max limit
omega_min=0;    %motor min limit

V=11.1;            %Battary Voltage
Ah=0.7;           %Battary capacity
C=60;            %Battary C rate

%% PID Values
Z_P = 5.8;
Z_I = 0.5;
Z_D = 2;

phi_P = 2;
phi_I = 2;
phi_D = 0.1;

theta_P = 2;
theta_I = 2;
theta_D = .1;

psi_P = 0.1;
psi_I = 0.1;
psi_D = 0;

%% Velocity input

omega=[200,200,200,100,200,200,200,100];

run coaxialQuad_model.slx
%sim("quadcopter_sim")