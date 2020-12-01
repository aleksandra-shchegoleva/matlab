function y = parse_excel(FILE)

Table = xlsread(FILE);

%номера станций
T = Table(:,2);

%запись данных о биомассе и популяции
%Фитопланктон
T = [T Table(:,3) ./ 100000];
T = [T Table(:,4) .* 1000];
%Зоопланктон
T = [T Table(:,5) ./ 1000];
T = [T Table(:,6)];

y = T;