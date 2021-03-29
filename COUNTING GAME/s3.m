    N=30;
    pot=[5,9,13];
    
    %USER's choices
    A=[]; 
    A=input('Enter numbers: ');
    turn=A(length(A)); %the last number in User's choices
    
    %Delete the potential number once it is passed
    if turn<(N-1) %the user has not won yet
        if pot(1)<=turn
        pot(1)=[];
        end
    end
    
    disp("New array: ");
    disp(pot);