% Newton raphson Method
function [Root]=Newton_Raphson(f,fprime,xi,tolarence,N)

iterations=0;
xr=xi-(f(xi)./fprime(xi));

while (iterations <= N) && abs(xr-xi)>tolarence
iterations=iterations+1;
xi=xr;
xr=xi-(f(xi)./fprime(xi));
end
if iterations==N
    fprintf("The root not found the method didn't convergence");
else
    Root=xr;
end