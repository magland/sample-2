% 3-D surface demo. mexican_hat lives in ../lib, so put that folder on
% the search path first (files next to the running script are found
% automatically; other folders follow MATLAB's addpath rules).
addpath('../lib');

[X, Y] = meshgrid(linspace(-3, 3, 80), linspace(-3, 3, 80));
Z = mexican_hat(X, Y);

figure;
surf(X, Y, Z);
title('Mexican hat');
xlabel('x');
ylabel('y');

disp('surface rendered — drag to rotate');
