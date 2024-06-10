function [ u ] = controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

% States and desired states
z = s(1);
zdot = s(2);
zdes = s_des(1);
zdes_dot = s_des(2);
zdes_ddot = 0;

% Params
m = params.mass;
g = params.gravity;

% PD Controller gains
Kp = 40; % Proportional gain
Kv = 7.5;  % Derivative gain

% PD Controller equation
u = m * (zdes_ddot + Kp * (zdes - z) + Kv * (zdes_dot - zdot) + g);


end

