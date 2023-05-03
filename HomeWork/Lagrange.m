% Function to implement lagrange method
function [y_x0] =Lagrange(x,y,x0)

n = length(x); 
y_x0 = 0; 

for i = 1:n
    k = 1;
    for j = 1:n
        if j ~= i
            k = k*(x0 - x(j))/(x(i) - x(j));
        end
    end
    y_x0 = y_x0 + y(i)*k;
end
end
