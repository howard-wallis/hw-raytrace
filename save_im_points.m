function save_im_points(image_points, d)

filename = strcat("image_points_", mynum2str(d), ".dat");
save(filename, "image_points");