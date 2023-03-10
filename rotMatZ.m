function [A] = rotMatZ(angleInDeg)

% A = rotMatZ(angleInDeg)
%   angleInDeg: [°] 1x1
%
% Returns a rotational matrix A rotated around
% the z-axis with the angle angleInDeg.
%
%   Troubleshooting hints:
%   - Have you entered the angle in degrees or radiant?

c = cosd(angleInDeg);
s = sind(angleInDeg);

A = ([  c -s 0; ...
        s c 0; ...
        0 0 1 ]);
end

