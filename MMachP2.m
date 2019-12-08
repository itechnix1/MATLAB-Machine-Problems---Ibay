%MachineProblem2

%input the points
disp("Point 1");
vx1 = 'Abscisa';
x1 = input(vx1);
vy1 = 'Abscisa';
y1 = input(vy1);

disp("Point 2");
vx2 = 'Abscisa';
x2 = input(vx2);
vy2 = 'Abscisa';
y2 = input(vy2);

disp("Point 3");
vx3 = 'Abscisa';
x3 = input(vx3);
vy3 = 'Abscisa';
y3 = input(vx3);

P1=[x1,y1];
P2=[x2,y2];
P3=[x3,y3];
onecol=[1;1;1];

pointmatrix = [[P1 ; P2 ; P3] , onecol];
squarematrix =[((x1 ^ 2)+(y1 ^ 2)) ; ( (x2 ^ 2) + (y2 ^ 2) );((x3 ^ 2)+(y3 ^ 2))];

%Laplace Expansion

%for x^2+y^2
    square=det(pointmatrix);
    
%for -x
    x=det([squarematrix,pointmatrix(:,[2,3])]);
    
%for +y
    y=det([squarematrix,pointmatrix(:,[1,3])]);
    
%for constant
    const=det([squarematrix,pointmatrix(:,[1,2])]);

%equation (general form of the circle)
C = [square,square,-x,y,-const];
mid=[-x/-(2*square),y/-(2*square)];

%Check
r1 = norm(mid - P1);
r2 = norm(mid - P2);
r3 = norm(mid - P3);

%Catch
if round(r1) ~= round(r2) || round(r2) ~= round(r3) || round(r3) ~= round(r1)
    error("Not in Same Circle")
end

disp("Center: "),disp(mid)
disp("Radius: "),disp(r1)
disp("Coeficients (D,E,F)")
disp([-x/square,y/square,-const/square])


 
  
  
  
  
  