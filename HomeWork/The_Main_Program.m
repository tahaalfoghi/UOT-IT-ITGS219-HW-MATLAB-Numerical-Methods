% The Main Program of the Homework.
% Script file to run every method.
% you should input a string for this input's ["A" "B" "C" "a" "b" "c" "d"]
while 1
    in=input("Choose A or B or C");
    if in=="C"
        break
    elseif in == "A"
    fprintf("Take one method\n 1.Drawing\n 2.Fixed point iteration\n 3.Bisection\n 4.Newton Raphson\n 5.False Position\n");
    choice=input("Take number for the Method");
    switch choice
        case 1
            f=input("Enter the function"); % use @(x)
            x1=input("Enter xmin");
            x2=input("Enter xmax");
            n=input("Enter number of point");
            x=linspace(x1,x2,n);
            [xroot,yroot]=Drawing(f,x);
            
        case 2
            g=input("Enter g(x) function from f(x)");% use @(x)
            xi=input("Enter the initial guess");
            tol=input("Enter the tolarence");
            N=input("Enter number of iterations");
            Root=fixed_point_iteration(g,xi,tol,N);
            fprintf("Root=%f\n",Root);
        case 3
            f=input("Enter the function"); % use @(x)
            a=input(" Enter a");
            b=input("Enter b");
            tol=input("Enter the tolarence");
            N=input("Enter the number of iterations");
            Root=Bisection(a,b,f,tol,N);
            fprintf("Root=%f\n",Root);
        case 4
            f=input("Enter the function"); % use @(x)
            fprime=input("Enter the derivative of the function");
            xi=input("Enter the initial guess");
            tol=input("Enter the tolarence");
            N=input("Enter the number of iterations");
            Root=Newton_Raphson(f,fprime,xi,tol,N);
            fprintf("Root=%f\n",Root);
        case 5
            f=input("Enter the function"); % use @(x)
            x0=input("Enter x lower");
            x1=input("Enter x upper");
            tol=input("Enter the tolarence");
            N=input("Enter the number of iterations");
            Root=False_Position(x0,x1,f,tol,N);
            fprintf("Root=%f\n",Root);
    end

    elseif in == "B"
        fprintf("Choose the interpolation\na.Newton forward\n b.Newton backward\n c.Lagrange method\n d.Splines\n");
        choice=input("Take one from the list (Input a string)");
        switch choice
            case "a"
                x=input("Enter the array of x values");
                fx=input("Enter the array of f(x) values");
                x0=input("Enter the x value you want to approximate");
                y_x0=Newton_Forward(x,fx,x0);
                 fprintf(' %f\n',y_x0);

            case "b"
                x=input("Enter the vector of x values");
                fx=input("Enter the vector of f(x) values");
                x0=input("Enter the x value you want to approximate at f(x)");
                y_x0=Newton_Backward(x,fx,x0);
                   fprintf('%.2f\n',y_x0);

            case "c"
                x=input("Enter the x values");
                y=input("Enter the vector of y(x) values");
                 x0=input("Enter the x value you want to approximate at f(x)");
                 y_x0=Lagrange(x,y,x0);
                   fprintf("%f\n",y_x0);
            case "d"
                x=input("Enter x values");
                y=input("Enter y values");
                [a, b, c, d] =Splines(x,y);
                
        end
    end
end

