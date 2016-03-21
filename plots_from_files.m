function plots_from_files(drange, nxbins, nybins, xres, yres, prefix)
% for when make_intensity_plots didn't work
% we can try again from the .dat files

all_image_points = [];

for d = drange
    filename = strcat("image_points_", mynum2str(d), ".dat");
    load(filename); % brings in "image_points"
    all_image_points = horzcat(all_image_points, image_points);
endfor

make_intensity_plots(all_image_points, drange, nxbins, nybins, xres, yres, prefix);