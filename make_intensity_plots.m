function make_intensity_plots(multi_image_points, drange, nxbins, nybins, xres, yres, prefix);
% calls intensity_plot for several sets of data

densmats = zeros(nybins,nxbins,length(drange));

% first calculate all the density matrices
for i = 1:length(drange)
    dstr = mynum2str(drange(i));
    my_disp(strcat("Computing density at d=", dstr, "...")) %see where we are
    x = multi_image_points(:,3*i - 2); % (:,1) (:,4) (:,7), etc
    y = multi_image_points(:,3*i - 1);
    densmats(:,:,i) = point_density(x,y,min(x),min(y),max(x),max(y),nxbins,nybins);
    my_disp("Done!");
endfor

% then find the maximum density in any matrix
dmax = max(max(max(densmats)));

% then plot each density matrix normalised around that maximum    
for i = 1:length(drange)
    dstr = mynum2str(drange(i));
    my_disp(strcat("Plotting image at d=", dstr, "...")) %see where we are
    fname = strcat(prefix, dstr, ".png");
    intensity_plot(densmats(:,:,i), fname, xres, yres, dmax);
    my_disp("Done!");
endfor