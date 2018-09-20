input = [ 1 0 0 0]; % [ 1 0 0 0]

noise = (1+1).*rand(1,4) -1; % (b-a).*rand(1000,1) + a . Here 'a' is lower and  'b' higher limit

y=input+noise;
result=[];
count=1;

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
    