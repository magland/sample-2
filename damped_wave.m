function y = damped_wave(t, f, tau)
% DAMPED_WAVE  Exponentially decaying sine wave.
y = exp(-t / tau) .* sin(2 * pi * f * t);
end
