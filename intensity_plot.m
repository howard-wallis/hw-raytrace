function intensity_plot(densmat, filename, xres, yres, dmax)
%   dmax        normalisation factor

figure('Position',[0,0,xres,yres]);
ncol = set_colormap(); % retrieve the number of colours
densmat = densmat .* (ncol / dmax); % normalise to number of colours
image(densmat);
axis("off");
print(filename, "-dpng", res_opt_string(xres,yres));
close; % prevent figure clogging