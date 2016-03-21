function image_points = reflected_image(ss, rvs, ix_max, iy_max, d)
% takes a set of points ss and vectors rvs
% returns all the intersections of these with a plane
% at distance d from the first point ss(1,1,:) along the z-axis

% normal to the plane
pnorm = [0 0 -1];

% point on the plane
a0 = [0 0 d]; % my_transpose(ss(1,1,:)) + 

% for each point on the surface, calculate the reflection vector rvec
% and the intersection of rvec and the image plane
image_points = [];
for ix = 1:ix_max
    for iy = 1:iy_max        
        % the point on the image plane
        a = extend_to_plane( my_transpose(ss(iy,ix,:)), my_transpose(rvs(iy,ix,:)), a0, pnorm);
        image_points = [image_points; a];
    end
end