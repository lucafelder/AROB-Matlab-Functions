function [T] = formHmat(A, V)

% T = formHmat(A, V)
%   A: [] 3x3 rotational matrix
%   V: [] 3x1 translational vector
%
% Returns a homogeneous matrix T for a given rotational matrix
%   rotMat and a translational vector.
T = [   A, V; ...
        0 0 0 1];
end

