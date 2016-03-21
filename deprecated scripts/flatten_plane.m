function plane_points = flatten_plane(normvec, points)
% flattens the 3D points (that form a plane) to a 2D plane

x = points(:,1);
y = points(:,2);
z = points(:,3);

% a single point on the plane, "a"
a = [x(1), y(1), z(1)];

% a unit vector in the plane, "xph" (x-prime-hat)
xph = [x(2), y(2), z(2)] - a;
xph = normalise(xph);

% another unit vector in the plane, "yph"
yph = cross(xph, normvec);
yph = normalise(yph);

% solve simultaneous eqns for new_point = [xp, yp]
plane_points = [];
A = [xph(1), yph(1); xph(2), yph(2)];
for i = 1:length(points)
    b = [x(i), y(i), z(i)];
    V = [ b(1) - a(1); b(2) - a(2) ];
    plane_points = [plane_points, A\V];
end