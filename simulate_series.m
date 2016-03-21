function all_image_points = simulate_series(xwidth, ywidth, dz, theta, phi, geom, drange, prefix, nxbins, nybins, xres, yres, double_mode)
% Takes a series of images along the z-axis
% Input parameters
%   xwidth, ywidth          dimensions of surface
%   dz                      maximum deflection of surface
%   geom                    "sin" or "cos", the style of the surface
%   theta, phi              angle of incoming light
%   drange                  range of values along the z-axis at which images are taken
%   prefix                  prefix of the image filenames (d will be appended)
%   nxbins, nybins          number of bins to group image points into when intensity plotting
%   xres, yres              resolution of output image
%   double_mode             if true, takes an image off the inverse of the surface and superimposes it,
%                           simulating the effect of having two panes in an IGU, the back one bending the opposite way

% construct incident vector from theta, phi
iv = ivec(theta, phi);

% construct the surface
if geom == "sin"
    [x, y, z] = geom_sin(xwidth, ywidth, dz);
elseif geom == "cos"
    [x, y, z] = geom_cos(xwidth, ywidth, dz);
else
    error("geometry expected as 'sin' or 'cos'");
endif

% INVERT
%z = -z;

% calculate the surface data (one time only! not for each image)
my_disp("Calculating surface data...");
[ss, rvs, ix_max, iy_max] = surface_data(x, y, z, iv);
if double_mode
    [ss2, rvs2, ix_max2, iy_max2] = surface_data(x, y, -z, iv);
    % ix_max2 should == ix_max
endif
my_disp("Done calculating surface data!");

all_image_points = []; % stores 3 columns for each value of d

for d = drange
    % take an image at d
    my_disp(strcat("Taking an image at d=", mynum2str(d), "..."));
    image_points = reflected_image(ss, rvs, ix_max, iy_max, d);
    if double_mode
        image_points2 = reflected_image(ss2, rvs2, ix_max2, iy_max2, d);
        image_points = vertcat(image_points, image_points2);
    endif
    my_disp("Done!");
    
    save_im_points(image_points, d);
    
    all_image_points = horzcat(all_image_points, image_points);
endfor