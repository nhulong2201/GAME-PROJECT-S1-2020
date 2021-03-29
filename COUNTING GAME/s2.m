N=30; num=2;
%Find potential numbers
potNum=N-1; %the last potential number
pot=[]; %array of potential numbers
difference=num+1; %difference between 2 potential numbers

%Find key elements/ potential numbers to win
while potNum>0
    pot=[potNum pot]; %add potential numbers in to an array
    potNum=potNum-difference;
    
end

disp(pot);