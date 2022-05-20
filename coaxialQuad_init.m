%%
%Quadcopter simulation variables

%% Constants
clc;clear;
b=1.869E-6;         %Thrust coefficent
d=1.706E-7;         %Drug coefficent
m=3.1;              %Mass (kg)
l=0.3;              %Arm length (meter)
g=9.81;


Ixx=0.182;
Iyy=0.188;          %Inertia moments (kgm^2)
Izz=0.335;

Ax=0;
Ay=0;               %Air drag coeff in each axis

K_emf=0.00255;      %motor coefficent (Vs/rad)
J=6.5e-7;           %Motor mass moment of inertia (kgm^2)
b_m=2.415e-6;       %Motor damping coefficient (Nms)
Kt=0.00255;         %Motor torque coefficient (Nm/A)
R=0.117;            %Motor rotor resistance (ohm)
L=1.17e-4;          %Motor rotor inductance (H)
omega_max=inf;      %motor max limit
omega_min=0;        %motor min limit

K_m=0.1;            %Rpm to Voltage

V=14.8;             %Battary Voltage
Ah=5.8;             %Battary capacity
C=45;               %Battary C rate

%% PID Values
Z_P = 10;
Z_I = 5;
Z_D = 10;

phi_P = 20;
phi_I = 5;
phi_D = 10;

theta_P = 20;
theta_I = 5;
theta_D = 10;

psi_P = 10;
psi_I = 5;
psi_D = 10;

%% Velocity input

%omega=[200,200,200,100,200,200,200,100];

run coaxialQuad_model.slx
%sim("quadcopter_sim")