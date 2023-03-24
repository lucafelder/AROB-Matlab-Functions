function T = DhParamToHmat1axis(thetaInDeg, d, a, alphaInDeg)
%DHPARAMTOHMAT1AXIS Converts DH Parameters into a homogeneous Matrix.
%
%T = DhParamToHmat1axis(thetaInDeg, d, a, alphaInDeg)
%   thetaInDeg: [°] 1x1 The absolute angle of rotation theta_i around
%                       joint i, which means the angle around z_i-1 that
%                       rotates x_i-1 in x_i.
%   d:          []  1x1 The translation di from the origin of K_i-1
%                       along z_i-1, which is the distance of the
%                       origins of K_i-1 and K_i is minimal
%                       (measured in the direction of z_i-1).
%   a:          []  1x1 The translation ai in direction xi, so that the
%                       origin of K_i-1 comes as close as possible to the
%                       origin of K_i. (ai is always positive).
%   alphaInDeg: [°] 1x1 The angle of rotation ai around x_i , which
%                       transforms z_i-1 into z_i.
%
% Troubleshooting hints:
%   - Have you entered the angle in degrees or radiant?

ca = cosd(alphaInDeg);
ct = cosd(thetaInDeg);
sa = sind(alphaInDeg);
st = sind(thetaInDeg);

T = [ ct    -st*ca    st*sa    a*ct;    ...
      st    ct*ca     -ct*sa   a*st;    ...
      0     sa        ca       d;       ...
      0     0         0        1;       ...
    ];
end

