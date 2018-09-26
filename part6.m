%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       DHRUVRAJ SINGH RAWAT
%                            15UEC022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear all;
close all;

input_binary=[ 1 0 1 0 1 0 1 ];

repeat_times=3; % Change this Variable to change how many times variable must Repeat

input_coded=[];
pos=1;
for i=1:length(input_binary)
    count=1;
 while(count <= repeat_times )
     input_coded(pos)=input_binary(i);
     count=count+1;
     pos=pos+1;
 end
    
end