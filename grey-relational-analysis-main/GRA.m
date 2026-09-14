clc,clear
data=xlsread('Data Skripsi.xlsx','Data','B2:J5');  
% Normalisasi
% Benefit type
for i=1:5     
    data(:,i)=(data(:,i)-min(data(:,i)))/(max(data(:,i))-min(data(:,i)));   
end
% Defect type
for i=6:9     
    data(:,i)=(max(data(:,i))-data(:,i))/(max(data(:,i))-min(data(:,i)));   
end
data = data'
n=size(data,2); 
ck=data(1,:);   
bj=data(2:end,:); 
m2=size(bj,1); 
for j=1:m2       
    t(j,:)=abs(ck-bj(j,:)); 
end
mn=min(min(abs(t')));  
mx=max(max(abs(t')));  
rho=0.5;  
ksi=(mn+rho*mx)./(abs(t)+rho*mx)
r=sum(ksi')/n 
[rs,rind]=sort(r,'descend') 
