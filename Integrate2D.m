%   2D integration done by built-in functions
%     This file will be used for test cases.
%
%   Author: Cansu Duygu Üstünel
%   Student ID: 309129

function [integral] = Integrate2D(f, a, b, c ,d)
    du = integral2(f,a,b,c,d);
    %[integral] = du;
    disp(sprintf('result of integral2: %g',du))
end