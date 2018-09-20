clc;
clear all;
close all;

input_binary=[1 0 0];
input_transmitted=[];
for i=1:length(input_binary)
    if(input_binary(i)==0)
        input_transmitted(i)=-1;
    elseif(input_binary(i)==1)
        input_transmitted(i)=1;
    end
end

y_seq=randn(1,3000); % Here should be Modified Later
y_final=[];

sum=0;
pos=1;
for i =1:length(y_seq)
    if(mod(i,3)==0)
        temp=sum/3;
        if(temp>0)
            y_final(pos)=1;
            pos=pos+1;
            sum=0;
        else
            y_final(pos)=0;
            pos=pos+1;
            sum=0;
            
        end
    else
        sum=sum+y_seq(i);
    end
end


