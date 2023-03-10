function [T] = poseToHmatStaubli(pose)

% T = poseToHmatStaubli(pose)
%
% Returns a homogeneous matrix T (for Stäubli) for the pose pose.

R = rotMatX(pose(1,4))* ...
    rotMatY(pose(1,5))* ...
    rotMatZ(pose(1,6));

T = formHmat(R, [pose(1,1); ...
                 pose(1,2); ...
                 pose(1,3)]);
end

