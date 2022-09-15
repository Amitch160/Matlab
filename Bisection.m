% BISECTION METHOD IN MATLAB


f=input("Enter your function:");


a=input("Enter left side of interval:");

b=input("Enter right side of interval:");

n=input("Enter number of intervals:");

e=input("Enter tolerance:");


if f(a)*f(b)<0
else
    fprintf("The guess is Incorrect! Enter new gussess\n");
    xl=input("Enter the first valu of guess interval:");
    xu=input("Enter the end valu of  guess interval:");
end

for i=1:n
    c=(a+b)/2;
        fprintf('P%d= %.4f\n',i,c)
        if abs(c-b)<e ||abs(c-a)<e
            break

        end

        
        if f(a)*f(c)<0
            b=c;

        elseif f(b)*f(c)<0
            a=c;


        end
        fprintf("Solution is %d\n",c)
        %str=['The required root of the equation is :',num2str(c), '']





    end

