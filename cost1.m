function [J]=cost1(x2,y,theta)
m=length(y);
J= (x2*theta-y)'*(x2*theta-y)/(2*m);
end