function z = mexican_hat(x, y)
% MEXICAN_HAT  Ricker wavelet surface.
r2 = x.^2 + y.^2;
z = (1 - r2) .* exp(-r2 / 2);
end
