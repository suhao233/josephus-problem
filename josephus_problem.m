clc;
close all;
clear
%Լɪ����Ϸ
people = [1:41];%������
kill=[];%Ӧ��ɱ����
k = 1;
for i =1 :200
    if mod(i,3) == 0
        people(1,length(people)+1:length(people)+2)=people(1,i-2:i-1); % i =3
        kill(1,k)= people(i);
        k = k+1;
     end
     if k >39
         break; %����ѭ��
     end
end
kill_1 = sort(kill);%��������
servere = people(1,length(people)-1:length(people));%������