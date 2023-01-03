% COMPOSITE SIMPSON'S RULE
% Author: Cansu Duygu Üstünel
% Student ID: 309129


function [res] = CmpSimpson(f,a,b,c,d,n)
% 2D integration by simpson's 1/3 (composite) rule
% Description of input variables:
%       f - function of form f(x,y)
%       a - lower limit of x
%       b - upper limit of x
%       c - lower limit of y
%       d - upper limit of y
%       n - number of subintervals

    %In composite Simpson rule, n has to be even so we check this
    if rem(n,2) ~= 0
        error('n must be even');
    end

    %defining the step sizes of each direction
    hx=(b-a)/n;
    hy=(d-c)/n;
    
    h=(hx*hy)/9; %the common h that will be used for our result

    res = 0;
    
    %now we want to determine the coefficients based on whether
    %their terms are odd or even. we update the sum in this nested for
    %loop.
    for i=0:n %loop of the outer integral
        if i==0 || i==n
            p=1;
        elseif mod(i,2)==0 %if even
            p=4;
        else
            p=2;
        end
    
        for j=0:n %loop of the inner integral
            if j==0 || j==n
                q=1;
            elseif mod(j,2)~=0 %if odd
                q=4;
            else
                q=2;
            end
        x = a + j*hx;
        y = c + i*hy;
        res = res + p*q*h*f(x,y);
        end
    
    end
    %[res]=res;
    disp(sprintf('result of our 1/3 rule: %g',res))
    
end

