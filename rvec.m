function r = rvec(iv, nv) % was [rx ry rz]
% calculates the 3D reflection vector from incedent ivec
% and normal nvec (assuming nvec normalised)

r = iv - 2 * dot(iv, nv) * nv;
r = normalise(r);