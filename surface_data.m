function [ss, rvs, ix_max, iy_max] = surface_data(x, y, z, ivec)

% NB access like z(iy, ix)

% size of surface s
[iy_max, ix_max] = size(z);

% point s0 on the surface s
s0 = [x(1,1), y(1,1), z(1,1)];

% calculate normals to the surface
[nx, ny, nz] = surfnorm(x, y, z);

ss = rvs = zeros(iy_max, ix_max, 3);

for ix = 1:ix_max
    for iy = 1:iy_max
        % the normal for this point ix, iy
        nvec = normalise([nx(iy,ix) ny(iy,ix) nz(iy,ix)]);
        
        % the reflection vector for this point
        rvs(iy, ix, :) = normalise(rvec(ivec, nvec));
        
        % the start of the vector, s
        ss(iy, ix, :) = [x(iy,ix) y(iy,ix) z(iy,ix)];
    end
end