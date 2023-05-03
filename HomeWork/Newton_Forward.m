%  Newton Forward Interploation
function yxi = Newton_Forward(x,y,xi)

n = length(x);
d = zeros(n-1);
h = x(2)-x(1); 
u = (xi-x(1))/h; 

for k = 2:n
    d(k-1,1) = y(k) - y(k-1);
end

for r = 2:n-1 
    for k = 1:n-r
        d(k,r) = d(k+1,r-1) - d(k,r-1);
    end
end
disp('The forward difference table is:');
disp(d);
yxi = y(1); t = u;
% Calculation of result
for r = 1:n-1 
    yxi = yxi + t*d(1,r);
    t = (u-r)/(r+1)*t;
end
fprintf('The required value is f(%1.2f) = %3.4f\n', xi, yxi);
end
