theta = 0;
phi = 0;
width = 50;
[x,y] = meshgrid(1:2:width, 1:width);
z = 0 .* x;
d = 50;

[nrm, image_points] = reflected_image(x, y, z, theta, phi, d);

imgplot(image_points);