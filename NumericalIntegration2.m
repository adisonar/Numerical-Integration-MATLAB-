%% Problem 2

 % Program to compute the integrals numerically using Step Function, Trapezoidal Rule
 
 % f = function
 % x0 = lower limit
 % xn = upper limit
 % y0 = lower limit
 % yn = upper limit
 % n = number of strips
 % h = grid size
 % k = grid size
 
 f = @(x,y)[(sin(x+3*y)^2.*exp(x-2*y))./(x^2+2)];
 
 x0= -1;
 xn = 1;
 y0 = -1;
 yn = 1;
 n = 52;
 h = (xn - x0)/n;
 k = (yn - y0)/n;
 
 
 %% Step Function 
 
 A = h*k;
 s = 0;
 for i = 1:n-1
     for j = 1: n-1
         xi = x0 + (i-1)*h;
         yi = y0 + (j-1)*k;
         s = s + f(xi,yi)*A;
     end     
 end
 disp('Step Function  = ')
 disp(s)
 
 
 %% Trapezoidal Rule

 for i=1:n+1     
     for j=1:n+1         
         ar(i,j)=f(x0,y0);         
         x0=x0+h;     
     end
     y0=y0+k;     
     x0=x0-(n+1)*h; 
 end
 ans=0; 
 for i=1:n     
     for j=1:n         
         ans = ans+ar(i,j)+ar(i,j+1)+ar(i+1,j)+ar(i+1,j+1);     
     end
 end
 TrapezoidalRule = ((h*k)/4)*ans 
