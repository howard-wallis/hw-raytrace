function res = res_opt_string(xres, yres)
% for print commands you need "-S768,1024" etc 
res = strcat("-S", num2str(xres), ",", num2str(yres));