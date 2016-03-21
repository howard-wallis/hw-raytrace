function iv = ivec(theta, phi)
% constructs the incident vector for light shining
% on the surface at angles:
%       theta - between z and x axes
%       phi - between z and y axes
% angles are provided in degrees

% convert angles to radians
theta = theta * pi / 180;
phi = phi * pi / 180;

% negative because pointing down towards surface
iv = -1 .* [ sin(theta) * cos(phi), sin(theta) * sin(phi), cos(theta) ];
iv = normalise(iv);