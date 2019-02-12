%
%  Copyright (c) 2018 James Pritts
%  Licensed under the MIT License (see LICENSE for details)
%
%  Written by James Pritts
%
function M = params_to_mtx(Rt)
if size(Rt,1) < 4
    Rt(4,:) = ones(1,size(Rt,2));
end

num_xforms = size(Rt,2);

c = cos(Rt(1,:));
s = sin(Rt(1,:));
z = zeros(1,num_xforms);
M = reshape([c;s;z;-s;c;z; Rt(2,:); Rt(3,:); ones(1,num_xforms)],3,3,num_xforms);