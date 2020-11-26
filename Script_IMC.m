clear;
clc;

Ra = 0.5; % Armature resistance
La = 2.5e-3; % Armature inductance
kf = 0.35; % Flux constant
J = 1e-3; % Moment of inertia
B = 0;
%% Gains of the 2DOF PI current controller
alphac = 2*pi*500; % Closed?loop bandwidth
kpc = alphac*La; % Proportional gain
kic = alphac^2*La; % Integral gain
r = kpc - Ra; % Active resistance
Umax = 140; % Saturation: upper limit
Umin = -140; % Saturation: lower limit
%% Gains of the 2DOF PI speed controller (for Section 4.2)
alphas = 0.1*alphac; % Closed?loop bandwidth
kps = alphas*J; % Proportional gain
kis = (alphas^2)*J; % Integral gain
b = kps - B; % Active damping
TN = 7; % Rated torque
Tmax = 2*TN; % Saturation: upper limit
Tmin = -2*TN; % Saturation: lower limit
Udc = 140;
Tsw = 1e-4;
