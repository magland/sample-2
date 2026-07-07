% Live figure updates: drawnow flushes the figure mid-run.
% This one takes a while — try the stop button (⏹) in the tab bar.
x = linspace(0, 4 * pi, 400);
figure;
for k = 1:200
    plot(x, sin(x - k / 4) .* exp(-x / 8));
    axis([0 4*pi -1 1]);
    title(sprintf('frame %d / 200', k));
    drawnow;
    pause(0.04);
end
disp('animation done');
