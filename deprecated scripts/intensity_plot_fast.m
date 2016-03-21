function densmat = intensity_plot_fast(image_points, filename, nxbins, nybins, xres, yres, overlap)

x = image_points(:,1);
y = image_points(:,2);
densmat = point_density(x,y,min(x),min(y),max(x),max(y),nxbins,nybins);

% not sure why this rotation is needed
% densmat = rot90(rot90(densmat));
% wait a minute

figure('Position',[0,0,xres,yres]);
ncol = set_colormap(); % retrieve the number of colours
dmax = max(max(densmat)) % the greatest density
densmat = densmat .* (ncol / dmax); % normalise to number of colours
densmat = mat_mirror(densmat, overlap);
image(densmat);
axis("off");
print(filename, "-dpng", res_opt_string(xres,yres));
close; % prevent figure clogging