%%
%Quadcopter simulation variables

%%

K_m=1;              %motor coefficent
omega_max=500;      %motor max limit
omega_min=0;        %motor min limit
Jm=1;               %Motor mass moment of inertia (kgm^2)


b=0.275;        %Thrust coefficent
d=0.5;          %Drug coefficent
m=3.750;        %Mass (kg)
l=0.15;         %Arm length (meter)

Ixx=1;
Iyy=1;          %Inertia moments (kgm^2)
Izz=1;

%%----Matrixes----
I =[Ixx,0,0;
    0,Iyy,0;
    0,0,Izz];

thrust_matrix=[0,0,0,0;
               0,0,0,0;
               b,b,b,b];

moment_matrix=[0,l*b,0,-l*b;
               -l*b,0,l*b,0;
               -d,d,-d,d];

gyro_matrix=[1,-1,1,-1;
             -1,1,-1,1;
              0,0,0,0].*(Jm*pi/30);

%% Velocity input

omega=[200,200,200,100,200,200,200,100]

run quadcopter_model.slx
%sim("quadcopter_sim")