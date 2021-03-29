
N=input('Enter the limit: ');
num=input('Enter the max of numbers added: ');

potNum=N-1; %the last potential number
pot=[]; %array of potential numbers
difference=num+1; %difference between 2 potential numbers

%Find key elements/ potential numbers to win
while potNum>0
    pot=[potNum pot];
    potNum=potNum-difference;
    
end

turn=0;
%Choices of user & computer
while turn<N
    turn=0;
    A=[]; %user's choices
    
    %USER
    A=input('Enter numbers: ');
    turn=A(length(A));
    
    %Decide who won
    if turn==(N-1)
        disp("User won!!!");
        turn=turn+1; %stop the loop when User won
    elseif turn==N
        disp("Computer won!!!");
    end
    
    %Delete the potential number once it is passed
    if turn<(N-1) %the user has not won yet
    if pot(1)<=turn
        pot(1)=[];
    end
    end
    
    %COMPUTER
   
    if turn<(N-1)
       check=0;
       
       %Check whether user reaches the potential number. If yes, delete it
       if turn==pot(1)
           
           check=1; %when user reaches the potential number
       end
       
       %What computer picks when:
       %Case 1: User reaches the potential number
       if check==1
           B=[];
           random=randi(num);
           B=[(turn+1):(turn+random)]; %pick randomly
           turn=(turn+random);
           disp("Computer: ");
           disp(B);
       
       %Case 2: User does not
       else
           stop=0;
           B=[]; %computer's choices
           
       %Computer will pick numbers until it reaches the potential number
           while stop<num && turn<pot(1)
               
               B=[B turn+1];
      
               turn=turn+1;
               stop=stop+1;
           end
           
           %Delete the potential number once reached
           if turn==pot(1)
                  pot(1)=[];
           end
           
           %Display to the user
           disp("Computer: ");
               disp(B);
       end
     
    end
end