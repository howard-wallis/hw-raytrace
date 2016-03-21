function y = sawt(x, L)

y = log ( -exp( -i * pi * x / L ) );

y = 0.5 * (1 + i * y/ pi);

y = real(y);