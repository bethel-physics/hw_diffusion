clear
close all
% 
% This program solves the heat diffusion equation with
%     Initial condition: T(x=0)=0
%     Boundary condition: T(x=-L/2)=T(x=+L/2)=0
%
%%%%%%%%%%%%
%% Set up parameters

N = 50;                 % Number of grid points

kappa = 1;              % Diffusion constant
L = 1.0;                % Length of domain
h = L/N;                % Space grid size
x = (0:N)*h - L/2;      % Space coordinate
%tau = h^2/(2*kappa);   % Stability limit
tau=0.0001;

T = zeros(N+1,1);       % Numerical solution vector
xi = 2:N;               % Space index i
xp = 3:N+1;             % Space index i+1
xm = 1:N-1;             % Space index i-1

% Define initial condition here
T(N/2) = 1;

%%%%%%%%%%%%
%% Run the loop

plot(x,T,'-o'); ylim([0,1.0]);
pause;

step=1;
while(1)
    T(xi) = T(xi)+(kappa*tau/h^2)*(T(xp)-2*T(xi)+T(xm));
    plot(x,T,'-o'); ylim([0,1]); xlim([-0.5,0.5])
    pause(0.1);
end
