% \ ^
%  \  <---
%   \
theta = 90;
phi = 0;
width = 50;
[x, y] = meshgrid(1:8:width, 1:width);
z = -x;
d = 60;

%[ravg, image_points, rvecs] = first_reflection(x, y, z, theta, phi, d);
[ravg, image_points] = reflected_image(x, y, z, theta, phi, d);


%surfnorm(x,y,z);
%rayplot3(x,y,z, rvecs);
imgplot3(image_points);
%imgplot2(image_points, ravg);