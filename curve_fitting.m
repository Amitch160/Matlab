% Curve Fitting in MATLAB



X = input('Enter list of height: ');

Y = input('Enter list of flow: ');

F = input('enter 1 for linear fit, 2 for parabolic fit,3 for cubic fit:');

n = length(X);

N=F+1;      % For dimension of matrix

A=zeros(N,N);

for i=1:N
    for j=1:N
     A(i,j)= sum(X.^(i+j-2));

    end
end


B=zeros(N,1);

for k=1:N
    B(k)=sum((X.^(k-1)).*Y);
end

U=A\B;

disp("Your Polynomial is :")

for k=N:-1:2
    fprintf("+(%.4fx^%d)",U(k),k-1)
end

fprintf("+(%.4f)\n",U(1))



P=flip(U);
x2=linspace(X(1),X(n),100);
y2=polyval(P,x2);
plot(x2,y2,'r')
hold on
plot(X,Y,'bo')




