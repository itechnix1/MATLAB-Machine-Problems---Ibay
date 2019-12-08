%MachineProblem1
value = 'Enter graph behavior test value:';
testval=input(value);

for n = 0:1:99  
    if n <= 9
        stem(n, ((n^2)-7)); hold on;
    else
        x = 1; y = n;
        while x==1  
            y = y - 10;
            if y < 10
                stem(y ,((y^2)-7)); 
                hold on;
            x=0;          
            end 
        end
    end
end