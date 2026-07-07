% mip package demo: installs the inpoly package (point-in-polygon test)
% from the mip registry (https://mip.sh) on first run, then reuses the
% cached install. See https://mip.sh for available packages.
mip load --install inpoly

% a star-shaped polygon
k = (0:9)';
r = 1 + 0.6 * (-1).^k;
node = [r .* cos(pi/5 * k + pi/2), r .* sin(pi/5 * k + pi/2)];

% classify random points
rng(42);
pts = 4 * rand(2000, 2) - 2;
inside = inpoly2(pts, node);
fprintf('points inside: %d / %d\n', sum(inside), length(inside));

figure;
plot(pts(inside, 1), pts(inside, 2), '.');
hold on;
plot(pts(~inside, 1), pts(~inside, 2), '.');
plot([node(:, 1); node(1, 1)], [node(:, 2); node(1, 2)]);
hold off;
axis equal;
title('inpoly2: points inside a star');
legend('inside', 'outside', 'polygon');
