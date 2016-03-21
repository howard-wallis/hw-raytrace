function simulate_series_fast(xwidth, ywidth, dz, theta, phi, geom, drange, prefix, nxbins, nybins, xres, yres)
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

% construct incident vector from theta, phi
iv = ivec(theta, phi);

% construct the surface
if geom == "sin"
    [x, y, z] = geom_sin_quarter(xwidth, ywidth, dz);
elseif geom == "cos"
    [x, y, z] = geom_cos_quarter(xwidth, ywidth, dz);
else
    error("geometry expected as 'sin' or 'cos'");
endif


% calculate the surface data (one time only!)
[ss, rvs, ix_max, iy_max] = surface_data(x, y, z, iv);

for d = drange
    dstr = mynum2str(d);
    printf(strcat(dstr,"\n")); %see where we are
    fname = strcat(prefix, dstr, ".png");
        
    % take an image at d
    image_points = reflected_image(ss, rvs, ix_max, iy_max, d);
    
    % plot the image
    intensity_plot_fast(image_points, fname, nxbins*0.5, nybins*0.5, xres, yres, true);
endfor