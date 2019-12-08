%MachineProblem4

hval = 'Give initial height of projectile: '; 
hei = input(hval);
vval = 'Give the speed of projectile: ';
vel = input(vval);
tval = 'Give the angle of projection w/ respect to x-axis:';
theta = input(tval);
xval = 'Give acceleration in x-axis, either positive or negative: ';
ax = input(xval);
yval = 'Give acceleration in y-axis, either positive or negative: ';
ay = input(yval);

if ay == 0
    error("no free fall")
end

distance = sqrt((vel * sind(theta)).^ 2 - 4 * (1 / 2 * ay) * hei);
tcomp = (- vel * sind(theta) + distance ) / ay;

if tcomp <= 0 
   tmax = (-vel*sind(theta) - distance )/ ay;
   t =(0:0.1:tmax);
    x = vel * cosd(theta) .* (t) + 1/2 * ax * (t) .^ 2;
        y = vel * sind(theta) .* (t) + 1/2 *ay .* (t) .^ 2;
else
        x = vel.*cosd(theta).*(linspace(0,tcomp,0.1)) + 1/2*ax.*linspace(0,tcomp,0.1).^2;
        y = vel.*sind(theata).*linspace(0,tcomp,0.1) + (ay.*linspace(0,tcomp,0.1).^2)/2;
end      

plot(x,y)
axis tight




    
    
   
    


