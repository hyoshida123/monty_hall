% Hideaki Yoshida
clc;
clear;
wins = simulate_monty_hall_strategy('stay', 100000);
disp('The strategy name: stay');
disp('Number of plays: 100000');
fprintf('Win percentage: %s%%\n',num2str(wins*100));
loss=1-wins;
fprintf('Loss percentage: %s%%\n',num2str(loss*100));
disp('==========================');
win = simulate_monty_hall_strategy('switch', 100000);
disp('The strategy name: switch');
disp('Number of plays: 100000');
fprintf('Win percentage: %s%%\n',num2str(win*100));
lose=1-win;
fprintf('Loss percentage: %s%%\n',num2str(lose*100));