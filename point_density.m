function densmat = point_density(X,Y,xstart,ystart,xend,yend,nxbins,nybins)
% counts the number of points (X,Y) within each bin
% returns a matrix of bins
% nxbins and nybins are the resolution

ix_max = length(X);
iy_max = length(Y);
assert(ix_max == iy_max);
i_max = ix_max;

% work out bin size
xbin_size = (xend - xstart) / nxbins;
ybin_size = (yend - ystart) / nybins;

% initialise the return matrix
densmat = zeros(nybins,nxbins);

%nxbins
%nybins

%jxm = jym = 1;

for i = 1:i_max
    % i for the input data, (jx,jy) for the output
    jx = findbin(X(i), xstart, xbin_size);
    jy = findbin(Y(i), ystart, ybin_size);
    densmat(jy,jx) += 1;
    %jxm = max(jx, jxm);
    %jym = max(jy, jym);
    %if jx == 51
    %    X(i)
    %    xstart
    %    xbin_size
    %endif
end

%jxm
%jym