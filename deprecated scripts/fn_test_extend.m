% series of tests for extend_to_plane.m
% extend_to_plane(start, direc, plane_point, plane_norm)
xhat = [1 0 0];
yhat = [0 1 0];
zhat = [0 0 1];
orig = [0 0 0];

assert( extend_to_plane(orig, xhat, [2 0 0], xhat) == [2 0 0] )
assert( extend_to_plane([1 1 1], yhat, [0 2 0], yhat) == [1 2 1] )
assert( extend_to_plane([0 0 -192342], zhat, [0 0 0], zhat) == [0 0 0] )
assert( extend_to_plane(orig, [1 1 1], [9 9 9], [1 1 1]) == [9 9 9] )
assert( extend_to_plane([0 2 0], [1 3 1], [2 8 2], [2 1 -4]) == [2 8 2] )