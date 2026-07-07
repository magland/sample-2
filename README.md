# numbl sample project

This project runs MATLAB-syntax `.m` files in your browser with
[numbl](https://numbl.org). Open a script and press the **▶** button in the
tab bar:

- `waves.m` — damped oscillations: printed output goes to the **Output**
  panel at the bottom, the plot opens as **Figure 1** in the side bar to the
  right. Calls `damped_wave.m` (functions next to the script are found
  automatically, like MATLAB's path rules).
- `scripts/surface_demo.m` — a 3-D surface. Uses `addpath` to call a
  function from the `lib/` folder.
- `scripts/animation.m` — figures update live during the run (`drawnow`).
- `scripts/write_results.m` — writes a file; it appears in the Explorer
  when the run finishes.
- `scripts/mip_demo.m` — installs the `inpoly` package from the
  [mip](https://mip.sh) registry on first run (`mip load --install`) and
  uses it. Installed packages are cached in your browser, shared by all
  projects, and refreshed automatically after 30 minutes of inactivity.

Edits are saved with **Ctrl+S** and persist in your browser. Runs use the
current editor contents, saved or not. Press **⏹** to stop a runaway run.
