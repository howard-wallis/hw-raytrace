function s = mynum2str(n)
% formats with leading zeroes for numbers < 1000

assert(n >= 0, "mynum2str cannot handle negative input");

if n >= 1000
    s = num2str(n);
elseif n >= 100
    s = strcat('0', num2str(n));
elseif n >= 10
    s = strcat('00', num2str(n));
elseif n >= 0
    s = strcat('000', num2str(n));
endif