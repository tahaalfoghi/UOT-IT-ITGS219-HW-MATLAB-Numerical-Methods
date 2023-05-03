% Finding Root By Drawing 
% x_root is the value of the estimated root, and y_root is the value of the function at that estimated root
function [xroot,yroot]=Drawing(f,x)
y = feval(f,x);
plot(x, y);
grid on;
xlabel('x');
ylabel('y');
title(' Graph for finding root');
disp('Click on the graph to find the root');
[xroot,yroot] = ginput(1);
fprintf("The root is approximately x =%f y=%f",xroot,yroot);




