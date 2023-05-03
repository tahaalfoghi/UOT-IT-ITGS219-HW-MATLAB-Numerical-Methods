% Cubic Splines
function [a, b, c, d] = Splines(x, y)
    disp('Cubic natural or free boundary spline');
    format short;

    n = length(x)-1;
    h = x(2:n+1)-x(1:n);

    
    a=y;

   
    for i=1:n
        l(i)=(a(i+1)-a(i))/h(i);
    end    
    l(n+1)=0;

    
    for i=2:n
        m(i)=3*(l(i)-l(i-1));
    end 

    m(1)=0;         
    m(n+1)=0;      

  
    A(1,1) = 1;
    for i=2:n
        A(i,i-1:i+1) = [h(i-1) 2*(h(i-1)+h(i)) h(i)];
    end
    A(n+1,n+1) = 1;

    
    c=(A\m')';

    
    for i=1:n
        b(i)=l(i)-h(i)*(2*c(i)+c(i+1))/3;
    end 

    
    for i=1:n
        d(i)=(c(i+1)-c(i))/(3*h(i));
    end 

    
    X=sym('X');
    for i=1:n
        s(i)=a(i)+b(i)*(X-x(i))+c(i)*(X-x(i))^2+d(i)*(X-x(i))^3;
    end 

    
    disp('a = ');
    disp(a);
    disp('b = ');
    disp(b);
    disp('c = ');
    disp(c);
    disp('d = ');
    disp(d);
end
                                          