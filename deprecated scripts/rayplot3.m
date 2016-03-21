function rayplot3(x,y,z, rays);
% plots the rays on the surface
% expects 2 equally sized 2D matrices:
%   surface - a matrix of scalars representing an evenly spaced surface
%   rays - a matrix of 3D vectors, one for each point on surface

U = rays(:,:,1);
V = rays(:,:,2);
W = rays(:,:,3);

surf(x,y,z);
hold on;
quiver3(x,y,z,U,V,W);
my_plot_setup();
hold off;
