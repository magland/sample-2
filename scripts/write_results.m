% Scripts can write files: results/summary.txt shows up in the Explorer
% when the run finishes.
mkdir('results');
fid = fopen('results/summary.txt', 'w');
fprintf(fid, 'n, n^2, sqrt(n)\n');
for n = 1:10
    fprintf(fid, '%d, %d, %.4f\n', n, n^2, sqrt(n));
end
fclose(fid);
disp('wrote results/summary.txt');
