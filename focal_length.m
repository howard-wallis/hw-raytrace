function f = focal_length(a, dz, geom)

if geom == "sin"
    f = a*a / (pi*pi * dz);
elseif geom == "cos"
    f = a*a / (2 * pi*pi * dz);
else
    error("geometry expected as 'sin' or 'cos'");
endif