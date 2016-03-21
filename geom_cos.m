function [x, y, z] = geom_cos(xwidth, ywidth, dz)
% full wavelength cosine wave geometry between 0 and -dz

[x,y] = meshgrid(0:xwidth, 0:ywidth);
z = - 0.25 * dz * (cos(x * 2 * pi / xwidth) - 1) .* (cos(y * 2 * pi / ywidth) - 1);