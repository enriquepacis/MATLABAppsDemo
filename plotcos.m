% close all; % close any open figures

syms 't' % declare t as a symbolic variable

%% Parameters
A0 = 1; % reference amplitude
f0 = 1; % [Hz] reference frequency

A = 1.75; % [V] variable amplitude
f = 1.5; % [Hz]

% reference cosine
y0 = A0*cos(2*pi*f0*t); % [V] 
% variable cosine
y = A*cos(2*pi*f*t); % [V]

% plotting commands
fplot(y0, [-1, 1], 'LineWidth', 2);
hold on % allow a second plot to be added without overwriting first plot
fplot(y, [-1, 1], 'LineWidth', 2);
hold off;

% gca is "get current axes"
set(gca, 'FontSize', 18)
grid on;

xlabel('$t$ (s)', 'Interpreter','latex')
ylabel('$y$', 'Interpreter','latex')

% Help the user distinguish datasets
legend({'Reference', 'Variable'})