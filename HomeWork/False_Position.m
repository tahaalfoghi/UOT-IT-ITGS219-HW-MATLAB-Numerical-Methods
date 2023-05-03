% Root Finding Using False Position Mehod
function [Root] = False_Position(x0,x1,f,tol,N)
if sign(f(x0))== sign(f(x1))
    disp("The method will not work");
end
xr=x1-f(x1).*(x1-x0)./(f(x1)-f(x0));
iteration=0;

while iteration <= N
    iteration=iteration+1;
    xr_old=xr;
    if sign(f(xr))==sign(f(x0))
        x0=xr;
    else 
        x1=xr;
    end 
    xr=x1-f(x1).*(x1-x0)./(f(x1)-f(x0));
    if abs(xr-xr_old) < tol
    Root = xr;
    fprintf("The Root = %f",Root);
    break
    end
end
if(iteration==N)
    disp("The Root not found the method keep divergence");
else
    Root=xr;
end
end

