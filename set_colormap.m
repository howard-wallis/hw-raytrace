function ncol = set_colormap ()
% ests the colormap to grayscale with black as low values and white as high

c = [1:100]';
c = c ./ 100;
c3 = repmat(c,1,3);
colormap(c3);
ncol = max(size(c));