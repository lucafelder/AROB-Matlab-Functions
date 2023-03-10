function [A] = rotMatX(angleInDeg)

% A = rotMatY(angleInDeg)
%   angleInDeg: [°] 1x1
%
% Returns a rotational matrix A rotated around
% the x-axis with the angle angleInDeg.
%
%   Troubleshooting hints:
%   - Have you entered the angle in degrees or radiant?

c = cosd(angleInDeg);
s = sind(angleInDeg);

A = ([  1 0 0; ...
        0 c -s; ...
        0 s c ]);
end



