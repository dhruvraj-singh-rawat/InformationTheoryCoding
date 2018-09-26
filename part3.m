clc;
clear all;
close all;


sigma=[ 1 0.5 0.25 0.125 ];

error_rate_WithoutRepeat=[];
error_count_WithoutRepeat=[];

pos=1;
% Part 1 when Bits are taken without Repetation 

for sig=sigma
    input=randi([0 1],1,1000); % Generating Thousand Random Bit Stream
    noise = (1+1).*rand(1,1000) -1; % (b-a).*rand(1000,1) + a . Here 'a' is lower and  'b' higher limit
    
    result=[];
    count=1;
    y=input+sig*noise;
    for i =y
        if (i>0)
            result(count)=1;
            count=count+1;
        else
            result(count)=0;
            count=count+1;

        end

    end
    temp=0;
    for i = 1:length(input)
        if(result(i)~=input(i))
            temp=temp+1;
            error_count_WithoutRepeat(pos)=temp;
        end
    end

    error_rate_WithoutRepeat(pos)=temp/length(input)*100;
    pos=pos+1;
end

% Part 2 when the Bits are taken with Repeatation

error_rate_Repeatation=[];
error_count_Repeatation=[];
pos1=1;
for sig=sigma
    
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
    y=input_expanded+sig*noise;

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
    error_count_Repeatation(pos1)=error_count;
    % Calculating Error Rate
    error_rate=error_count/length(input_binary)*100;
    
    error_rate_Repeatation(pos1)=error_rate;
    pos1=pos1+1;
end


