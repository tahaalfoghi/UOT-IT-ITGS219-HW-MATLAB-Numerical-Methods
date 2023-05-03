% Fixed Point iteration method
function [Root] = fixed_point_iteration(g,x0,tol,N)
x=x0;
iterations=0;
x_next=feval(g,x);

while (iterations <= N) && (abs(x_next-x) > tol)
    iterations=iterations +1;
    x=x_next;
    x_next=feval(g,x);
end
if iterations == N
    fprintf("Fixed Point did not convernge:\n");
    Root="Not found";
else 
Root =x_next;
end
