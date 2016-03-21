function image_points = simulate(xwidth, ywidth, dz, d, filename)
% runs the simulation and prints an image filename.png
% the surface has depth of dz units regardless of the width
% if fast_mode == true, then only a quarter of the simulation will be run

%xwidth = width;
%ywidth = width;

filename1 = strcat("points_", filename);
filename2 = strcat("intensity_", filename);

[x,y] = meshgrid(0:xwidth, 0:ywidth);
%z = -1 * dz .* sin(x * pi / xwidth) .* sin(y * pi / ywidth);



% take an image at d
image_points = reflected_image(ss, rvs, ix_max, iy_max, d);

%figure('Position',[0,0,1000,1000]);
%imgplot(image_points);
%axis("off");
%print(filename1,'-dpng','-S1000,1000');

nbins = 0.5 * max(xwidth, ywidth) + 1;
intensity_plot(image_points, filename2, nbins);