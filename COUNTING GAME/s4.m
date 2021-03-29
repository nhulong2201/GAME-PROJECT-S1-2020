turn=5;
pot(1)=5;
num=2; %the last number in user's choices
%Check whether user reaches the potential number
       if turn==pot(1)
           check=1; %when user reaches the potential number
       end

%What computer picks when:
       %Case 1: User reaches the potential number
       if check==1
           B=[];
           random=randi(num); %how many numbers picked randomly
           B=[(turn+1):(turn+random)]; %pick randomly
           turn=(turn+random);
           disp("Computer: ");
           disp(B);
       end