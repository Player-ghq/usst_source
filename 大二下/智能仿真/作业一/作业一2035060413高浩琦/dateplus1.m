clc;
clear;
date = [1 31;3 31;4 30;5 31;6 30;7 31;8 31;9 30;10 31;11 30];
year = input('Insert Year:');
month = input('Insert Month:');

day = input('Insert Day:');
isleap = mod(year,4)==0||(~(mod(year,100)==0))&&mod(year,400);


if isleap
    date = [date;2 29];
else
    date = [date;2 28];
end

%??4??????400?????100????????
for i = 1:11
    if flag == 1
        if (date(i,1)==month) && (date(i,2)==day)
            month = month+1;
            day = 1;
            flag = 0;
        end
        if(month == 12)&&(day == 31)
            month = 1;
            day = 1;
            year = year +1;
            flag = 0;
        end
        if flag == 1
            day = day+1;
            flag = 0;
        end
    end
end

disp(['The next day is:',num2str(year),',',num2str(month),',',num2str(day)]); 