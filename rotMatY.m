function [A] = rotMatY(angleInDeg)

% A = rotYHmat(angleInDeg)
%   angleInDeg: [°] 1x1
%
% Returns a rotational matrix A rotated around
% the y-axis with the angle angleInDeg.
%
% Troubleshooting hints:
%   - Have you entered the angle in degrees or radiant?

c = cosd(angleInDeg);
s = sind(angleInDeg);

A = ([  c 0 s; ...
        0 1 0; ...
        -s 0 c ]);
end

