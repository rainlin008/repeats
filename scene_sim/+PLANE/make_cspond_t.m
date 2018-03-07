function [X,cspond,G] = make_cspond_t(N,w,h)
x = LAF.make_random(N);
t = 0.9*rand(2,N)-0.45;
x1 = LAF.translate(x,t);
x2 = do_translate(x1);
x = reshape([x1;x2],9,[]);
M = [[w 0; 0 h] [0 0]';0 0 1];
M2 = [1 0 0; 0 1 0; 0 0 0; 0 0 1];
X = reshape(M2*M*reshape(x,3,[]),12,[]);

cspond = reshape([1:2*N],2,[]);
G = reshape(repmat([1:N],2,1),1,[]);

function x2 = do_translate(x1)
N = size(x1,2);
theta = 2*pi*rand(1,N);
n = [cos(theta);sin(theta)];
a = [(-0.5-x1(4,:))./n(1,:);
     (0.5-x1(4,:))./n(1,:); ...
     (-0.5-x1(5,:))./n(2,:);
     (0.5-x1(5,:))./n(2,:)];
[as,ind] = sort(a,1);
l = as(2,:);
u = as(3,:);
x2 = zeros(size(x1));
t = (u-l).*(0.9*rand(1,N)+0.1);
x2 = LAF.translate(x1,bsxfun(@times,t,n));

