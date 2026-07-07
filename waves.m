% Damped harmonic oscillation — press the run button (▶) above.
f = 2.5;    % frequency (Hz)
tau = 0.8;  % decay time constant (s)

t = linspace(0, 3, 600);
y = damped_wave(t, f, tau);

fprintf('samples:        %d\n', numel(t));
fprintf('peak amplitude: %.4f\n', max(abs(y)));
fprintf('rms amplitude:  %.4f\n', sqrt(mean(y.^2)));

figure;
plot(t, y);
hold on;
plot(t, exp(-t / tau), '--');
plot(t, -exp(-t / tau), '--');
hold off;
title('Damped oscillation');
xlabel('t (s)');
ylabel('amplitude');
legend('signal', 'envelope', '-envelope');
