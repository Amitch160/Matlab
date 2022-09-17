f=input("Enter your function:");


a=input("Enter left side of interval:");

b=input("Enter right side of interval:");

n=input("Enter number of intervals:");

e=input("Enter tolerance:");


if f(a)*f(b)<0

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




    end
 else
    fprintf("The guess is Incorrect! \n");
    
end









