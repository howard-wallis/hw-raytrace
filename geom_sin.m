function [x, y, z] = geom_sin(xwidth, ywidth, dz)
% half wavelength sin wave geometry between 0 and -dz

[x,y] = meshgrid(0:xwidth, 0:ywidth);
z = -1 * dz .* sin(x * pi / xwidth) .* sin(y * pi / ywidth);