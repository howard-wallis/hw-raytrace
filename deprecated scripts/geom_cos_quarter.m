function [x, y, z] = geom_cos_quarter(xwidth, ywidth, dz)
% full wavelength cosine wave geometry between 0 and -dz
% only one quarter is produced for speed

[x,y] = meshgrid(0:xwidth*0.5, 0:ywidth*0.5);
z = - 0.25 * dz * (cos(x * 2 * pi / xwidth) - 1) .* (cos(y * 2 * pi / ywidth) - 1);