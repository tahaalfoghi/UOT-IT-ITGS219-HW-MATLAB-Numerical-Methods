% Newton Backward Interpolation
function yxi = Newton_Backward(x,y,xi)

n = length(x);
d = zeros(n-1);
h = x(2) - x(1); 

u = (xi - x(n)) / h;
for k = 2:n % Calculation of first forward differences
    d(k-1, 1) = y(k) - y(k-1);
end
for r = 2:n-1 % Calculation of second and rest forward differences
    for k = 1:n-r
        d(k, r) = d(k+1, r-1) - d(k, r-1);
    end
end
disp('The forward difference table is:')
disp(d)
yxi = y(n);
t = u;
m = n-1;
for r = 1:n-1 % Calculation of result
    yxi = yxi + t * d(m, r);
    t = (u + r) / (r + 1) * t;
    m = m - 1;
end
fprintf('The required value is f(%1.2f) = %3.4f\n', xi, yxi);
end
