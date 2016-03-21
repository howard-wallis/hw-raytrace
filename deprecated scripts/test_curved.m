theta = 0;
phi = 0;
width = 50;
height = .1 * width;
[x,y] = meshgrid(1:width, 1:width);
z = -height * sin(x * pi / width);
d = 25;

%[ravg, image_points, rvecs] = first_reflection(x, y, z, theta, phi, d);
[ravg, image_points] = reflected_image(x, y, z, theta, phi, d);


%surfnorm(x,y,z);
%rayplot3(x,y,z, rvecs);
%imgplot3(image_points);
imgplot2(image_points, ravg);