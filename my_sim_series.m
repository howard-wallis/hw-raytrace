% current settings
xwidth = 420;
ywidth = 320;
dz = 4;
theta = phi = 0;
geom = "cos";
f = focal_length(xwidth, dz, geom)
drange = [12,17,25] .* 100;
nxbins = 0.5 * xwidth;% + 1; %nbins = 0.5 * max(xwidth, ywidth) + 1;
nybins = 0.5 * ywidth;% + 1; %should be odd? to avoid central lines
xres = 1260;
yres = 960;
double_mode = true;
prefix = make_prefix("final_", xwidth, ywidth, dz, geom, double_mode);

% check that the output image will appear with squares, not rectangles
assert(xres/yres == xwidth/ywidth);

% make sure we have integers
assert(nxbins == round(nxbins));
assert(nybins == round(nybins));

all_image_points = simulate_series(xwidth, ywidth, dz, theta, phi, geom, drange, prefix, nxbins, nybins, xres, yres, double_mode);
make_intensity_plots(all_image_points, drange, nxbins, nybins, xres, yres, prefix);