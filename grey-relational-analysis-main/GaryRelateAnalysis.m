clc,clear
load x.txt   
for i=1:15     
    x(i,:)=x(i,:)/x(i,1);   
end
for i=16:17     
    x(i,:)=x(i,1)./x(i,:);  
end
data=x; 
n=size(data,2); 
ck=data(1,:);   
bj=data(2:end,:); 
m2=size(bj,1); 
for j=1:m2       
    t(j,:)=bj(j,:)-ck; 
end
mn=min(min(abs(t')));  
mx=max(max(abs(t')));  
rho=0.5;  
ksi=(mn+rho*mx)./(abs(t)+rho*mx);  
r=sum(ksi')/n 
[rs,rind]=sort(r,'descend') 