function imgplot3(image_points)
% plots the points in 3D
x = image_points(:,1);
y = image_points(:,2);
z = image_points(:,3);
scatter3(x,y,z,1,'k');
my_plot_setup();