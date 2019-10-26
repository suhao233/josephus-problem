clc;
close all;
clear
%约瑟夫游戏
people = [1:41];%总人数
kill=[];%应该杀的人
k = 1;
for i =1 :200
    if mod(i,3) == 0
        people(1,length(people)+1:length(people)+2)=people(1,i-2:i-1); % i =3
        kill(1,k)= people(i);
        k = k+1;
     end
     if k >39
         break; %跳出循环
     end
end
kill_1 = sort(kill);%死掉的人
servere = people(1,length(people)-1:length(people));%存活的人