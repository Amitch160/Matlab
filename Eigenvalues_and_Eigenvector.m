%Eigen values and Eigen Vector using Matlab without using Function

A = input('Enter the matrix A : ');
u = input('Enter the intial choice of eiganvector u as column vector: ');
%[1;1;1]; the intial choice of eiganvector
epsilon = input('\n Enter the tolerence of error: ');
%error of tolerence you want
m1 = 1;
v =A*u;
m2 = max(abs(v));
err = abs(m1-m2);
%calculating the greatest eiganvalue and the corresponding eiganvector.
while err>epsilon
    v = A*u;
    m2 = max(abs(v));
    u = v/m2;
    err = abs(m1-m2);
    m1 = m2;
end
fprintf('\n The required eiganvalue is %2.8f \n', m1);
disp('The corresponding eiganvector is: ');
disp(u);
















