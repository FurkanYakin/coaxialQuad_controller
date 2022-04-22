%%
%Quadcopter simulation variables

%%

b=0.275;        %Thrust coefficent
d=0.5;          %Drug coefficent
m=3.750;        %Mass (kg)
l=0.15;         %Arm length (meter)

Ixx=1;
Iyy=1;          %Inertia moments (kgm^2)
Izz=1;

Ax=0;
Ay=0;           %Air drag coeff in each axis

K_emf=1;        %motor coefficent (Vs/rad)
J=1;            %Motor mass moment of inertia (kgm^2)
b_m=1;          %Motor damping coefficient (Nms)
Kt=1;           %Motor torque coefficient (Nm/A)
R=1;            %Motor rotor resistance (ohm)
L=1;            %Motor rotor inductance (H)
omega_max=inf;  %motor max limit
omega_min=0;    %motor min limit

V=1;            %Battary Voltage
Ah=1;           %Battary capacity
C=1;            %Battary C rate

%% Velocity input

omega=[200,200,200,100,200,200,200,100];

run coaxialQuad_model.slx
%sim("quadcopter_sim")