function imgplot(image_points)
% simple plotting assuming that the points all have the same z coord
x = image_points(:,1);
y = image_points(:,2);
scatter(x, y, 1, 'k');
xlabel('x');
ylabel('y');