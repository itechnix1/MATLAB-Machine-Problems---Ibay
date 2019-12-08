value = 'Enter no. of Data Points';
count = input(value);
for i = 1:count
    x(i) = input('x value:');
    y(i)=input('y value:');
end

matrix = [transpose(x) , transpose(y)];

for i = 1:10
    e(i) = norm(y - polyval(polyfit(x , y , i) , x));
end

ie = find(e == min(e(:)),1);

polyfit(x,y,ie)

