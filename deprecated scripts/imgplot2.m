function imgplot2(image_points, normvec)
% flattens the image_points to a plane defined by norm, and scatters that
plane_points = flatten_plane(normvec, image_points);
x = plane_points(1,:);
y = plane_points(2,:);
scatter(x, y, 1, 'k');
xlabel('x');
ylabel('y');
