function [theta, J_history]=gradient1(x2,y,theta,alpha,iterations,n)
m=length(y);
thetacache=zeros(n+1,1);
J_history=zeros(iterations,1);
lam=4;
for i=1:iterations
    h=(x2*theta-y)';
    for j=1:n+1
        thetacache(j)= (theta(j)-(lam*alpha/m))-alpha*h*(1/m)*x2(:,j);
    end
    for j=1:n+1
        theta(j)=thetacache(j);
    end    
    J_history=cost1(x2,y,theta);
end
end