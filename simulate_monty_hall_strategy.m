% Hideaki Yoshida
function winProbability = simulate_monty_hall_strategy(strategy, numPlays)
% strategy: A string that may be either 'stay' or 'switch'
% numPlays: # of times to play the Monty Hall game using strategy
% winProbability: # of times the car is won divided by numPlays
    numWins=0;
    for i = 1:numPlays
        car = randi(3,1);
        choice = randi(3,1);
        if((strcmp(strategy,'stay'))&&(choice==car))
            numWins = numWins+1;
        elseif((strcmp(strategy,'switch'))&&(choice~=car))
            numWins = numWins+1;
        end
    end
    winProbability = numWins / numPlays;
end

