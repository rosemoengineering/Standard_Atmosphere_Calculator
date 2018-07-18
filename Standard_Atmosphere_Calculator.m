


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                                                                                                  %%%
%%%                         ROSEMO ENGINEERING                             %%%                                    
%%%               Standard Atmosphere Calculator For 0-47 Km         %%%
%%%                                                                                                  %%% 
%%%                                                                                                  %%%                               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

P0=101325;                      % Pressure at Sea Level (Pascal)
T0=288.15;                      % Temperature at Sea Level (Kelvin)
rho0=1.225;                     % Density at Sea Level (kg/m^3)
h0=0;                           % Altitude at Sea Level (meter)
g=9.8065;                       % Gravity of Eart m/s^2
R=287;                          % Gas constant
gama=1.4 ;                      % Ratio of specific heat constants
mu=1.784*10^-5 ;                % Dynamic Viscosity at Sea Level (k/ms)

h1       = input ('Altitude: ');

if (h1<=11000)
a=-0.0065;                                 % Temperature gradient
T1=T0+a*(h1-h0)                            % Temperature change with respective to altitude
P1=P0*((T1/T0)^(-g/(R*a)))                 % Pressure change with respective to altitude
rho1=rho0*((T1/T0)^((-g/(R*a))-1))         % Density change with respective to altitude
SoS= sqrt(gama*R*T1)                       % DSpeed 0f Sound change with respective to altitude
mu1=mu*((T1/T0)^0.75)                      % Dynamic Viscosity change with respective to altitude
nu=mu1/rho1;                                % Kinematic Viscosity change with respective to altitude
end

if (h1>11000)&&(h1<=20000)
    d_h=11000;
    a_h=-0.0065;                                 % Temperature gradient
    T_h=T0+a_h*(d_h-h0);                         % Temperature change with respective to altitude
    P_h=P0*((T_h/T0)^(-g/(R*a_h)));              % Pressure change with respective to altitude
    rho_h=rho0*((T_h/T0)^((-g/(R*a_h))-1));      % Density change with respective to altitude
    
    T1=T_h                                      % Temperature change with respective to altitude
    P1=P_h*(exp((-g/(R*T_h))*(h1-11000)))       % Pressure change with respective to altitude when there is no temperature change
    rho1=rho_h*(exp((-g/(R*T_h))*(h1-11000)))   % Density change with respective to altitude when there is no temperature change
    SoS= sqrt(gama*R*T1)                        % Speed 0f Sound change with respective to altitude
    mu1=mu*((T1/T0)^0.75)                       % Dynamic Viscosity change with respective to altitude
    nu=mu1/rho1                                 % Kinematic Viscosity change with respective to altitude
end

if (h1>20000)&&(h1<=32000)
    d_h11=11000;
    a_h11=-0.0065;                                        % Temperature gradient
    T_h11=T0+a_h11*(d_h11-h0);                            % Temperature change with respective to altitude
    P_h11=P0*((T_h11/T0)^(-g/(R*a_h11)));                 % Pressure change with respective to altitude
    rho_h11=rho0*((T_h11/T0)^((-g/(R*a_h11))-1));         % Density change with respective to altitude
    
    T_h20=T_h11;                                          % Temperature change with respective to altitude
    P_h20=P_h11*(exp((-g/(R*T_h20))*(20000-11000)));      % Pressure change with respective to altitude when there is no temperature change
    rho_h20=rho_h11*(exp((-g/(R*T_h20))*(20000-11000)));  % Density change with respective to altitude when there is no temperature change
   
    a=0.001;
    T1=T_h11+(a*(h1-20000))
    P1=P_h20*(exp((-g/(R*T_h20))*(h1-20000)))
    rho1=rho_h20*((T1/T_h20)^((-g/(R*a))-1))             % Density change with respective to altitude
            
    SoS= sqrt(gama*R*T1)                                 % Speed 0f Sound change with respective to altitude
    mu1=mu*((T1/T0)^0.75)                                % Dynamic Viscosity change with respective to altitude
    nu=mu1/rho1                                          % Kinematic Viscosity change with respective to altitude
end

if (h1>32000)&&(h1<=47000)
    
    d_h11=11000;
    a_h11=-0.0065;                                        % Temperature gradient
    T_h11=T0+a_h11*(d_h11-h0);                            % Temperature change with respective to altitude
    P_h11=P0*((T_h11/T0)^(-g/(R*a_h11)));                 % Pressure change with respective to altitude
    rho_h11=rho0*((T_h11/T0)^((-g/(R*a_h11))-1));         % Density change with respective to altitude
    
    T_h20=T_h11;                                          % Temperature change with respective to altitude
    P_h20=P_h11*(exp((-g/(R*T_h20))*(20000-11000)));      % Pressure change with respective to altitude when there is no temperature change
    rho_h20=rho_h11*(exp((-g/(R*T_h20))*(20000-11000)));  % Density change with respective to altitude when there is no temperature change
   
     a_h32=0.001;
    T_h32=T_h11+(a_h32*(32000-20000));
    P_h32=P_h20*((T_h32/ T_h20)^(-g/(R*a_h32)))
    rho_h32=rho_h20*((T_h32/T_h20)^((-g/(R*a_h32))-1));   % Density change with respective to altitude
            
    a=0.0028;                                             % Temperature gradient
    T1=T_h32+a*(h1-32000)                                % Temperature change with respective to altitude
    P1=P_h32*((T1/T_h32)^(-g/(R*a)))                     % Pressure change with respective to altitude
    rho1=rho_h32*((T1/T_h32)^((-g/(R*a))-1))             % Density change with respective to altitude

    
    SoS= sqrt(gama*R*T1)                                 % Speed 0f Sound change with respective to altitude
    mu1=mu*((T1/T0)^0.75)                                % Dynamic Viscosity change with respective to altitude
    nu=mu1/rho1                                          % Kinematic Viscosity change with respective to altitude
end