function res = mat_mirror(mat, overlap)
% mirrors a 2d matrix
% (overlap = true ) ==> [a b; c d] -> [a b a; c d c; a b a]
% (overlap = false) ==> [a b; c d] -> [a b b a; c d d c; c d d c; a b b a]

[iy_max, ix_max] = size(mat);

if overlap
    res = zeros(2 * iy_max - 1, 2 * ix_max - 1);
    for iy = 1:iy_max
        for ix = 1:ix_max
            res(iy, ix) = ...
            res( iy, (2*ix_max) - ix ) = ...                    % top right
            res( (2*iy_max) - iy, ix ) = ...                    % bottom left
            res( (2*iy_max) - iy, (2*ix_max) - ix ) = ...       % bottom right
            mat(iy, ix);
        endfor
    endfor
else % no overlap
    res = zeros(2 * iy_max, 2 * ix_max);
    for iy = 1:iy_max
        for ix = 1:ix_max
            res(iy, ix) = ...
            res( iy, (2*ix_max+1) - ix ) = ...                  % top right
            res( (2*iy_max+1) - iy, ix ) = ...                  % bottom left
            res( (2*iy_max+1) - iy, (2*ix_max+1) - ix ) = ...   % bottom right
            mat(iy, ix);
        endfor
    endfor
endif