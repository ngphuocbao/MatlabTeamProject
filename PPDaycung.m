function[c,n]= PPDaycung(fx, a, b, ss)
%fx l� ph��ng tr?nh ban �?u 
%a, b l� kho?ng ph�n li nghi?m 
%ss l� sai s?
fx= str2func(['@(x)', fx]);
n=0; %�?m s? l?n l?p
while(1)   
    c=(a*fx(b) - b*fx(a))/(fx(b)-fx(a));
    n= n+1;
    
    if abs(fx(c)) < ss
        a=c;
        break;
    end
    if (fx(c) * fx(a) < 0 && fx(b) ~= fx(a))
        b=c;
    else
        a = c;
    end    
     e= abs(b - a); %e l� sai s?
     if(e < ss)
        break;
     end
end
end
