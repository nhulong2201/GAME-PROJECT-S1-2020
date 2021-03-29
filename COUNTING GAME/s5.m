turn=12;
pot(1)=15;
num=4;
%What computer picks when:
%Case 2: User does not
       
           stop=0;
           B=[]; %computer's choices
           
       %Computer will pick numbers until it reaches the potential number
       %and the number of elements added is in the certain amount 
           while stop<num && turn<pot(1)
               
               B=[B turn+1]; %add each number to B- computer's choices
      
               turn=turn+1; 
               stop=stop+1; 
           end
           
           %Delete the potential number once reached
           if turn==pot(1)
                  pot(1)=[];
           end
           
           disp(B)