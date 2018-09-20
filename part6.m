clc;
clear all;
close all;

input_binary=[ 1 0 0 0 1 1 0 ];

a = 1; % Lower Limit
b = 5; % Higher Limit
random_noise = floor((b-a).*rand(length(input_binary),1) + a);

input_coded=[];
pos=1;

for i=1:length(input_binary)
    for j=1:random_noise(i)
        input_coded(pos)=input_binary(i);
        pos=pos+1;
    end
    
end