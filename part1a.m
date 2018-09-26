%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       DHRUVRAJ SINGH RAWAT
%                            15UEC022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear all;
close all;

%input_binary=[1 0 0];
input_binary=randi([0 1],1,1000); % Generating Thousand Random Bit Stream
input_expanded=[];

% Here We are Expanding a Input Binary to 3 Digits ! That is '1' becomes '1 1 1'
pos=1;
for i=1:length(input_binary)
    count=1;
    while(count <= 3)
        input_expanded(pos)=input_binary(i);
        count=count+1;
        pos=pos+1;
    end
end

% Adding Noise to Expanded Input Binary Sequence

noise = (1+1).*rand(1,3000) -1; % (b-a).*rand(L,1) + a . Here 'a' is lower and  'b' higher limit . L= Length
y=input_expanded+noise;

% Converting 'Y' to Binary.
count=1; % Used for Storing Bits are correct Place 
y_seq=[];
for i =y
    if (i>0)
        y_seq(count)=1;
        count=count+1;
    else
        y_seq(count)=0;
        count=count+1;
        
    end
        
end


% Deducing the Original Sequence from 'Y'
y_final=[];
for j=1:1000
    sum=0;
    for i=3*(j-1)+1:3*j
        sum=sum+y_seq(i);
    end
    
    if(sum ==2 || sum==3)
        y_final(j)=1;
    else
        y_final(j)=0;
    end
end

% Calculating Error Count
error_count=0;
for i = 1:length(input_binary)
    if(y_final(i)~=input_binary(i))
        error_count=error_count+1;
    end
end

% Calculating Error Rate
error_rate=error_count/length(input_binary)*100;


