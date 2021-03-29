N=30;
turn=29;
%Decide who won
    if turn==(N-1)
        disp("User won!!!");
        turn=turn+1; %stop the loop when User won
    elseif turn==N
        disp("Computer won!!!");
    end