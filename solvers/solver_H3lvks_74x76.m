% Generated using GBSolver generator Copyright Martin Bujnak,
% Zuzana Kukelova, Tomas Pajdla CTU Prague 2008.
%
% Please refer to the following paper, when using this code :
%     Kukelova Z., Bujnak M., Pajdla T., Automatic Generator of Minimal Problem Solvers,
%     ECCV 2008, Marseille, France, October 12-18, 2008

function [s, v1, v2, v3, l1, l2, k] = solver_H3lvks_74x76(x11, x1p1, x21, x2p1, x31, x3p1)

s = 10000;
v1 = 10000;
v2 = 10000;
v3 = 10000;
l1 = 10000;
l2 = 10000;
k = 10000;

% precalculate polynomial equations coefficients
c(1) = x11(1)*x1p1(2);
c(2) = -x11(2)*x1p1(2);
c(3) = x11(1)*x1p1(1);
c(4) = -x11(2)*x1p1(1);
c(5) = x11(1)*x1p1(1)^2 + x11(1)*x1p1(2)^2;
c(6) = - x11(2)*x1p1(1)^2 - x11(2)*x1p1(2)^2;
c(7) = x11(1);
c(8) = -x11(2);
c(9) = x11(1)*x1p1(2) - x11(2)*x1p1(1);
c(10) = x21(1)*x2p1(2);
c(11) = -x21(2)*x2p1(2);
c(12) = x21(1)*x2p1(1);
c(13) = -x21(2)*x2p1(1);
c(14) = x21(1)*x2p1(1)^2 + x21(1)*x2p1(2)^2;
c(15) = - x21(2)*x2p1(1)^2 - x21(2)*x2p1(2)^2;
c(16) = x21(1);
c(17) = -x21(2);
c(18) = x21(1)*x2p1(2) - x21(2)*x2p1(1);
c(19) = x11(1)^2*x1p1(2) + x11(2)^2*x1p1(2);
c(20) = x11(1)^2*x1p1(1) + x11(2)^2*x1p1(1);
c(21) = x11(1)^2*x1p1(1)^2 + x11(1)^2*x1p1(2)^2 + x11(2)^2*x1p1(1)^2 + x11(2)^2*x1p1(2)^2;
c(22) = -x11(1)*x1p1(2);
c(23) = -x11(1)*x1p1(1);
c(24) = x1p1(2);
c(25) = x1p1(1);
c(26) = - x11(1)*x1p1(1)^2 - x11(1)*x1p1(2)^2;
c(27) = x11(1)^2 + x11(2)^2 + x1p1(1)^2 + x1p1(2)^2;
c(28) = -x11(1);
c(29) = 1;
c(30) = x11(1)^2*x1p1(1) - x11(1)*x1p1(1)^2 - x11(1)*x1p1(2)^2 + x11(2)^2*x1p1(1);
c(31) = x1p1(1) - x11(1);
c(32) = x21(1)^2*x2p1(2) + x21(2)^2*x2p1(2);
c(33) = x21(1)^2*x2p1(1) + x21(2)^2*x2p1(1);
c(34) = x21(1)^2*x2p1(1)^2 + x21(1)^2*x2p1(2)^2 + x21(2)^2*x2p1(1)^2 + x21(2)^2*x2p1(2)^2;
c(35) = -x21(1)*x2p1(2);
c(36) = -x21(1)*x2p1(1);
c(37) = x2p1(2);
c(38) = x2p1(1);
c(39) = - x21(1)*x2p1(1)^2 - x21(1)*x2p1(2)^2;
c(40) = x21(1)^2 + x21(2)^2 + x2p1(1)^2 + x2p1(2)^2;
c(41) = -x21(1);
c(42) = 1;
c(43) = x21(1)^2*x2p1(1) - x21(1)*x2p1(1)^2 - x21(1)*x2p1(2)^2 + x21(2)^2*x2p1(1);
c(44) = x2p1(1) - x21(1);
c(45) = 1;
c(46) = 1;
c(47) = 1;
c(48) = x31(1)*x3p1(2);
c(49) = -x31(2)*x3p1(2);
c(50) = x31(1)*x3p1(1);
c(51) = -x31(2)*x3p1(1);
c(52) = x31(1)*x3p1(1)^2 + x31(1)*x3p1(2)^2;
c(53) = - x31(2)*x3p1(1)^2 - x31(2)*x3p1(2)^2;
c(54) = x31(1);
c(55) = -x31(2);
c(56) = x31(1)*x3p1(2) - x31(2)*x3p1(1);
c(57) = x31(1)^2*x3p1(2) + x31(2)^2*x3p1(2);
c(58) = x31(1)^2*x3p1(1) + x31(2)^2*x3p1(1);
c(59) = -x31(1)*x3p1(2);
c(60) = -x31(1)*x3p1(1);
c(61) = x3p1(2);
c(62) = x3p1(1);
c(63) = - x31(1)*x3p1(1)^2 - x31(1)*x3p1(2)^2;
c(64) = x31(1)^2 + x31(2)^2 + x3p1(1)^2 + x3p1(2)^2;
c(65) = x31(1)^2*x3p1(1)^2 + x31(1)^2*x3p1(2)^2 + x31(2)^2*x3p1(1)^2 + x31(2)^2*x3p1(2)^2;
c(66) = -x31(1);
c(67) = 1;
c(68) = x31(1)^2*x3p1(1) - x31(1)*x3p1(1)^2 - x31(1)*x3p1(2)^2 + x31(2)^2*x3p1(1);
c(69) = x3p1(1) - x31(1);

M = zeros(74, 76);
ci = [1564, 2400, 2549, 2624, 2773, 3218, 3441, 4056, 4428, 4954];
M(ci) = c(1);

ci = [1490, 2326, 2475, 2550, 2699, 3144, 3367, 3982, 4131, 4354, 4880];
M(ci) = c(2);

ci = [1416, 2030, 2179, 2254, 2403, 2922, 3071, 3760, 3909, 4280, 4732];
M(ci) = c(3);

ci = [1342, 1956, 2105, 2180, 2329, 2848, 2997, 3686, 3835, 4206, 4658];
M(ci) = c(4);

ci = [3066, 3215, 3290, 3439, 4576, 5176];
M(ci) = c(5);

ci = [1638, 2992, 3141, 3216, 3365, 3514, 3589, 4502, 5102];
M(ci) = c(6);

ci = [3880, 4029, 5168, 5398];
M(ci) = c(7);

ci = [3488, 3806, 3955, 4030, 4105, 5094, 5324];
M(ci) = c(8);

ci = [4450, 4768, 4843, 4918, 4993, 5068, 5217, 5314, 5463, 5538, 5620];
M(ci) = c(9);

ci = [1565, 2406, 2555, 2630, 2779, 3224, 3447, 4059, 4431, 4955];
M(ci) = c(10);

ci = [1491, 2332, 2481, 2556, 2705, 3150, 3373, 3985, 4134, 4357, 4881];
M(ci) = c(11);

ci = [1417, 2036, 2185, 2260, 2409, 2928, 3077, 3763, 3912, 4283, 4733];
M(ci) = c(12);

ci = [1343, 1962, 2111, 2186, 2335, 2854, 3003, 3689, 3838, 4209, 4659];
M(ci) = c(13);

ci = [3072, 3221, 3296, 3445, 4579, 5177];
M(ci) = c(14);

ci = [1639, 2998, 3147, 3222, 3371, 3520, 3595, 4505, 5103];
M(ci) = c(15);

ci = [3886, 4035, 5171, 5399];
M(ci) = c(16);

ci = [3489, 3812, 3961, 4036, 4111, 5097, 5325];
M(ci) = c(17);

ci = [4451, 4774, 4849, 4924, 4999, 5074, 5223, 5317, 5466, 5541, 5621];
M(ci) = c(18);

ci = [1122, 1197, 1272, 1495, 1570, 3152, 3227, 3376, 4364];
M(ci) = c(19);

ci = [974, 1049, 1124, 1347, 1422, 2856, 2931, 3006, 4216];
M(ci) = c(20);

ci = [1418, 1493, 1568, 1643, 3522, 3598, 4512];
M(ci) = c(21);

ci = [2380, 2677, 2752, 3345, 3420, 4114, 5030];
M(ci) = c(22);

ci = [2010, 2307, 2382, 2975, 3050, 3818, 3893, 4808];
M(ci) = c(23);

ci = [2158, 2455, 2530, 3123, 3198, 3966, 4041, 4116, 4882];
M(ci) = c(24);

ci = [1862, 2085, 2160, 2827, 2902, 3670, 3745, 3820, 4660];
M(ci) = c(25);

ci = [3046, 3343, 3418, 3567, 5252];
M(ci) = c(26);

ci = [2898, 3121, 3196, 3493, 5104];
M(ci) = c(27);

ci = [3860, 4083, 5474];
M(ci) = c(28);

ci = [3712, 3935, 4010, 5326];
M(ci) = c(29);

ci = [4230, 4305, 4380, 4455, 4530, 5076, 5151, 5226, 5548];
M(ci) = c(30);

ci = [4674, 4823, 4898, 5047, 5122, 5298, 5373, 5448, 5622];
M(ci) = c(31);

ci = [1127, 1202, 1277, 1500, 1575, 3155, 3230, 3379, 4365];
M(ci) = c(32);

ci = [979, 1054, 1129, 1352, 1427, 2859, 2934, 3009, 4217];
M(ci) = c(33);

ci = [1423, 1498, 1573, 1648, 3525, 3601, 4513];
M(ci) = c(34);

ci = [2385, 2682, 2757, 3350, 3425, 4117, 5031];
M(ci) = c(35);

ci = [2015, 2312, 2387, 2980, 3055, 3821, 3896, 4809];
M(ci) = c(36);

ci = [2163, 2460, 2535, 3128, 3203, 3969, 4044, 4119, 4883];
M(ci) = c(37);

ci = [1867, 2090, 2165, 2832, 2907, 3673, 3748, 3823, 4661];
M(ci) = c(38);

ci = [3051, 3348, 3423, 3572, 5253];
M(ci) = c(39);

ci = [2903, 3126, 3201, 3498, 5105];
M(ci) = c(40);

ci = [3865, 4088, 5475];
M(ci) = c(41);

ci = [3717, 3940, 4015, 5327];
M(ci) = c(42);

ci = [4235, 4310, 4385, 4460, 4535, 5079, 5154, 5229, 5549];
M(ci) = c(43);

ci = [4679, 4828, 4903, 5052, 5127, 5301, 5376, 5451, 5623];
M(ci) = c(44);

ci = [1280, 1577, 2270, 2419, 2568, 2643, 2792, 3237, 3312, 3461, 4062, 4435, 4958];
M(ci) = c(45);

ci = [1058, 1355, 1900, 1975, 2124, 2199, 2348, 2867, 2942, 3017, 3692, 3767, 3842, 4213, 4662];
M(ci) = c(46);

ci = [3352, 3575, 3898, 4122, 5249, 5476];
M(ci) = c(47);

M(223) = c(48);
ci = [149, 616, 691];
M(ci) = c(49);

ci = [75, 224, 373, 842];
M(ci) = c(50);

ci = [1, 150, 299, 468, 543, 618, 693, 768, 917, 1760, 1835];
M(ci) = c(51);

ci = [371, 838];
M(ci) = c(52);

ci = [297, 764, 913];
M(ci) = c(53);

M(815) = c(54);
ci = [741, 1726, 1801];
M(ci) = c(55);

ci = [4145, 4294, 4443, 4612, 4761, 4836, 4985, 5060, 5209, 5312, 5461];
M(ci) = c(56);

ci = [152, 227];
M(ci) = c(57);

ci = [4, 79, 154, 229, 304, 379, 770, 845];
M(ci) = c(58);

M(670) = c(59);
ci = [522, 672, 896, 1806];
M(ci) = c(60);

M(596) = c(61);
ci = [448, 598, 748, 823, 1732];
M(ci) = c(62);

M(892) = c(63);
ci = [744, 819];
M(ci) = c(64);

ci = [300, 375];
M(ci) = c(65);

M(1780) = c(66);
M(1706) = c(67);
ci = [4148, 4223, 4298, 4373, 4448, 4523, 5062, 5137];
M(ci) = c(68);

ci = [4592, 4667, 4816, 4891, 5040, 5115, 5284, 5359];
M(ci) = c(69);


M1 = gj(M);

A = zeros(2);
amcols = [76 75];
A(1, :) = -M1(72, amcols);
A(2, :) = -M1(69, amcols);


%M2 = M(1:74,1:74)\M(:,75:76);
%A = zeros(2);
%amcols = [2 1];
%A(1, :) = -M2(72, amcols);
%A(2, :) = -M2(69, amcols);

%M3 = M(1:74,1:74)\M


[V D] = eig(A);
sol =  V([2],:)./(ones(1, 1)*V(1,:));

if (find(isnan(sol(:))) > 0)
    
    s = zeros(1, 0);
    v1 = zeros(1, 0);
    v2 = zeros(1, 0);
    v3 = zeros(1, 0);
    l1 = zeros(1, 0);
    l2 = zeros(1, 0);
    k = zeros(1, 0);
    
    s = 10000;
    v1 = 10000;
    v2 = 10000;
    v3 = 10000;
    l1 = 10000;
    l2 = 10000;
    k = 10000;
    
else
    %ordering of monomials
    %    'k*l1^2*v1^2*s'    'k*l1^2*v2*v1*s'    'k*l2*l1*v1^2*s'    'k*l2*l1*v2*v1*s'    'k^2*l1*v1^2*s'
    %   'k^2*l1*v2*v1*s'    'l1^2*v1^2*s'    'l1^2*v3*v1*s'    'l2*l1*v1^2*s'    'l2*l1*v3*v1*s'
    %   'k*l1*v1^2*s'    'k*l1*v2*v1*s'    'k*l1*v3*v1*s'    'k*l1^2*v2*v1'    'k*l2*l1*v1^2'
    %   'k*l2*l1*v2*v1'    'k*l2^2*v1^2'    'k*l2^2*v2*v1'    'k^2*l1*v1^2'    'k^2*l1*v2*v1'
    %   'k^2*l2*v1^2'    'k^2*l2*v2*v1'    'k^3*v1^2'    'l1*v1^2*s'    'l1*v3*v1*s'    'l1^2*v2*v1'
    %   'l1^2*v3*v1'    'l1^2*v3*v2'    'l2*l1*v1^2'    'l2*l1*v2*v1'    'l2*l1*v2^2'    'l2*l1*v3*v1'
    %   'l2*l1*v3*v2'    'l2^2*v1^2'    'l2^2*v2*v1'    'l2^2*v2^2'    'l2^2*v3*v1'    'l2^2*v3*v2'
    %    'k*l1*v1^2'    'k*l1*v2*v1'    'k*l1*v3*v1'    'k*l1*v3*v2'    'k*l2*v1^2'    'k*l2*v2*v1'
    %   'k*l2*v2^2'    'k*l2*v3*v1'    'k*l2*v3*v2'    'k^2*v1^2'    'k^2*v3*v1'    'l1*v1^2'    'l1*v2*v1'
    %    'l1*v3*v1'    'l1*v3*v2'    'l2*v1^2'    'l2*v2*v1'    'l2*v3*v1'    'k*l1*v1'    'k*l1*v2'
    %   Columns 59 through 67
    %     'k*l2*v1'    'k*l2*v2'    'k^2*v1'    'k^2*v2'    'l1*v1'    'l1*v2'    'l1*v3'    'l2*v1'    'l2*v2'
    %   Columns 68 through 76
    %    'l2*v3'    'k*v1'    'k*v2'    'k*v3'    'v1'    'v2'    'v3'    'k'    '1'
    
    ev  = diag(D);
    I = find(not(imag( sol(1,:) )) & not(imag( ev' )));
    
    v1 = ev(I)';
    k = sol(1,I);
    
    if isempty(I)
        v1 = 10000;
        k = 10000;
    end
end

for i = 1:size(v1,2)
    
    vv1(i) = -k(i)*M1(72,75)-M1(72,76);
    v2(i) = -k(i)*M1(73,75)-M1(73,76);
    v3(i) = -k(i)*M1(74,75)-M1(74,76);
    if abs(v3(i)) > 10e-5
        %monomial 68 - l2*v3
        l2(i) = (-k(i)*M1(68,75)-M1(68,76))/v3(i);
        %monomial 65 - l1*v3
        l1(i) = (-k(i)*M1(65,75)-M1(65,76))/v3(i);
        %monomial 25 - 'l1*v3*v1*s'
        %s(i) = (-k(i)*M(25,75)-M(25,76))/(v3(i)*v1(i)*l1(i));
    else if abs(v2(i)) > 10e-5
            %monomial 67 - l2*v3
            l2(i) = (-k(i)*M1(67,75)-M1(67,76))/v2(i);
            %monomial 64 - l1*v3
            l1(i) = (-k(i)*M1(64,75)-M1(64,76))/v2(i);
        else
            %monomial 66 - l2*v3
            l2(i) = (-k(i)*M1(66,75)-M1(66,76))/v1(i);
            %monomial 63 - l1*v3
            l1(i) = (-k(i)*M1(63,75)-M1(63,76))/v1(i);
        end
    end
    s(i) =  (x31(1)*x3p1(2) - x31(2)*x3p1(1))/((k(i)*(x3p1(1)^2 + x3p1(2)^2) + 1)*(v1(i)*x31(2) - v2(i)*x31(1)) + x3p1(1)*(l1(i)*v1(i)*x31(2) - l1(i)*v2(i)*x31(1)) + x3p1(2)*(l2(i)*v1(i)*x31(2) - l2(i)*v2(i)*x31(1)));
    
end
end
