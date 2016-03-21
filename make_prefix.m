function prefix = make_prefix(preprefix, xwidth, ywidth, dz, geom, double_mode)

if double_mode
    type = "_double_";
else
    type = "_single_";
endif

prefix = strcat(preprefix, num2str(xwidth), "x", num2str(ywidth), "_", num2str(dz), "_", geom, type); % "final_500x500_5_cos_double_";