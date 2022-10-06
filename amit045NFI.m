%Newton's Forward Interpolation Method Using MATLAB

tic
x = input("Enter values of X:");
y = input("Enter values of f(X):");
x0 = input("Enter valu of x where you want to know valu of f(x):");
n = length(x);
h = x(2) - x(1);

z = zeros(n,n);

z(:,1) = y;

z = ([x,z]);

for j = 3:n
    for i = (j-1):n
        z(i,j) = z(i,j-1) - z(i-1,j-1);
        

    end

end
z(n,n+1) = z(n,n) - z(n-1,n);

z

answer = z(2,2) + .5*z(3,3) + (.5*(.5-1)*z(4,4))/2 + (.5*(.5-1)*(.5-2)*z(5,5))/6 ;

fprintf("The value of f(1.5) using Newton forward interpolation is = %f ",answer)

toc

