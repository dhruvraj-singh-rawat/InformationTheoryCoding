input=randi([0 1],1,1000); % Generating Thousand Random Bit Stream

noise = (1+1).*rand(1,1000) -1; % (b-a).*rand(1000,1) + a . Here 'a' is lower and  'b' higher limit

y=input+noise; % Here Sigma =1 ! Addition of Input Stream and Noise

result=[];
count=1; % Used for Storing Bits are correct Place 

for i =y
    if (i>0)
        result(count)=1;
        count=count+1;
    else
        result(count)=0;
        count=count+1;
        
    end
        
end
error_count=0;
for i = 1:length(input)
    if(result(i)~=input(i))
        error_count=error_count+1;
    end
end

error_rate=error_count/length(input)*100;
    