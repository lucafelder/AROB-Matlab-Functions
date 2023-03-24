function T = DhParamToHmat6axis(dh, joints)
%DHPARAMTOHMAT6AXIS Converts a complet DH parameter set into a homogeneous
%Matrix for a 6 axis robot.
%  
%T = DhParamToHmat6axis(DH, joints)
%   dh:     []  6x4 [theta_1, d1, a1, alpha_1;
%                              ...
%                    theta_6, d6, a6, alpha_6]
%                    More details about the parameters can also be found
%                    in the DhParamToHmat help.
%   joints: [°] 1x6 (J1, J2, ..., J6)
%
% Troubleshooting hints:
%   - Have you entered the angle in the dh parameter matrix
%     in degrees or radiant?

T1 = DhParamToHmat1axis(dh(1,1)+joints(1), dh(1,2), dh(1,3), dh(1,4));
T2 = DhParamToHmat1axis(dh(2,1)+joints(2), dh(2,2), dh(2,3), dh(2,4));
T3 = DhParamToHmat1axis(dh(3,1)+joints(3), dh(3,2), dh(3,3), dh(3,4));
T4 = DhParamToHmat1axis(dh(4,1)+joints(4), dh(4,2), dh(4,3), dh(4,4));
T5 = DhParamToHmat1axis(dh(5,1)+joints(5), dh(5,2), dh(5,3), dh(5,4));
T6 = DhParamToHmat1axis(dh(6,1)+joints(6), dh(6,2), dh(6,3), dh(6,4));

T = T1*T2*T3*T4*T5*T6;
end