function n = findbin(x, start, bin_size)

n = 0;
eps = 0.001;

while (x - eps > start + bin_size * ++n)
end