% Root Finding Using Bisection Method
function [Root]=Bisection(a,b,f,tolarence,num_of_iterations)
if sign(f(a)) == sign(f(b))
    disp("the method will not work");
end

tol=tolarence;
N=num_of_iterations;
iteration = 0;
while (iteration <=N) && (b-a)/2 > tol
    iteration = iteration + 1;
    c = (a + b)/2;
    if f(c) == 0
        Root = c;
        return
    elseif sign(f(c)) == sign(f(a))
        a = c;
    else
        b = c;
    end
if(iteration==N)
    disp("The method did'nt convergence");
    Root=NaN;
else 
    Root=c;
end
end

