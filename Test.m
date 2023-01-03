%   Test cases
%
%   Author: Cansu Duygu Üstünel
%   Student ID: 309129
%
%   In this file, the manually made composite Simpson rule 
%   and the built-in function for integration is compared.

%1
f = @(x,y) x.^2.*y + x.*y.^2;
disp(f);
CmpSimpson(f,1,2,-1,1,100);
Integrate2D(f,1,2,-1,1);
newline;

%2
f = @(x,y) x.*y.^2 + x;
disp(f);
CmpSimpson(f,1,2,-1,1,100);
Integrate2D(f,1,2,-1,1);
newline;

%3
f = @(x,y) x.*y + sqrt(x/2);
disp(f);
CmpSimpson(f,1,2,-1,1,100);
Integrate2D(f,1,2,-1,1);
newline;

%4
f = @(x,y) x.^2 + y.^3;
disp(f);
CmpSimpson(f,3,4,-1,1,100);
Integrate2D(f,3,4,-1,1);
newline;

%5
f = @(x,y) exp(x.*y.^3);
disp(f);
CmpSimpson(f,3,4,0,1,100);
Integrate2D(f,3,4,0,1);
newline;

%6
f = @(x,y) x.*y + y + y.^2.*x;
disp(f);
CmpSimpson(f,3,4,-1,1,100);
Integrate2D(f,3,4,-1,1);