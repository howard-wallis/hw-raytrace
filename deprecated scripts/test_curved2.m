theta = 0;
phi = 0;
width = 100;
height = width / 50;
[x,y] = meshgrid(1:width, 1:width);
z = -1 * height .* sin(x * pi / width) .* sin(y * pi / width);
d = 1 * width;


[nrm, image_points] = reflected_image(x, y, z, theta, phi, d);

imgplot(image_points);