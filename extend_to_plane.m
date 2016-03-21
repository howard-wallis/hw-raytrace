function a = extend_to_plane(start, direc, plane_point, plane_norm)
% finds the point of intersection of the vector direc from the
% point start, and the plane defined by plane_point and plane_normal

lam = dot(plane_norm, plane_point - start) / dot(plane_norm, direc);
a = start + lam * direc;