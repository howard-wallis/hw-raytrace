theta = 45;
phi = 0;
width = 50;
[x,y] = meshgrid(1:width, 1:width);
z = zeros(width,width);
d = 50;

%[ravg, image_points, rvecs] = first_reflection(x, y, z, theta, phi, d);
[ravg, image_points] = reflected_image(x, y, z, theta, phi, d);


%imgplot3(image_points);
imgplot2(image_points, ravg);