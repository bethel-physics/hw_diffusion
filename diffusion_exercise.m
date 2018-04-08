clear
close all
% Simple FTCS Program for solving the diffusion equation

%%%%%%%%%%%%
%% Set up parameters

N = 50;                 % Number of grid points

kappa = 1;              % Diffusion constant
L = 1.0;                % Length of domain
h = L/N;                % Space grid size
x = (0:N)*h - L/2;      % Space coordinate for plotting
%tau = h^2/(2*kappa);   % Stability limit
tau=0.0001;
tau=input('Enter time step size: ');
imethod=menu('Select numerical method',...
    'FTCS','Richardson','DuFort Frankel');

T = zeros(N+1,1);       % Numerical solution vector for updates
xi = 2:N;               % Space index i
xp = 3:N+1;             % Space index i+1
xm = 1:N-1;             % Space index i-1

% Define initial condition here
T(N/2+1) = 1;      % temperature spike in the center

%%%%%%%%%%%%
%% Run the loop

plot(x,T,'-o'); ylim([0,1.0]);  %plot the grid
pause;

step=1;
while(1)
    if(imethod==1) %FTCS

	  % Implement the FTCS update 
        T(xi) = 

    elseif(imethod==2) %Richardson

       if step==1
           step=2;
           Told=T; Tnew=T;  % T(n-1) and T(n+1) vectors for centered time

		% Take one FTCS step
           T(xi)=

       else

		% Implement the Richardson update
           T(xi)=           
           Told=T; T=Tnew;

       end
    else % DuFort-Frankel

       if step==1
           step=2;
           Told=T; Tnew=T;

		% Take one FTCS update
           T(xi)=
       else

		% Implement the DuFort-Frankel update
           T(xi)=           
           Told=T; T=Tnew;
       end
    end

    plot(x,T,'-o'); ylim([0,1]); xlim([-0.5,0.5]) % plot the new step
    pause(0.1);
end
