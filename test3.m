x=load('testdata1.txt');
n=size(x,2)-1;
x1=x(:,1:n);
y=x(:,11);
normalization=true;
if(normalization)
    for i=1:n
        x1(:,i)=(x1(:,i)-max(x1(:,i)))/(max(x1(:,i))-min(x1(:,i)));
    end
    y=(y-max(y))/(max(y)-min(y));
end
x2=[ones(length(x1),1) x1];
theta=zeros(n+1,1);
alpha=0.32;
iterations=8500;
[theta, J_history]=gradient1(x2,y,theta,alpha,iterations,n);
input=load('train.txt');
x3=input(:,1:n);
x4=[ones(length(x3),1) x3];
output=round(x4*theta)