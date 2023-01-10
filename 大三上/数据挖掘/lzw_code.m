%% 实验五-LZW编码
clear all
clc
%% 主函数
Str_input = input('请输入一串字符：\n','s');
N = length(Str_input);  % 获得输入字符串长度

% 定义初始字典
dic_ini = string({'a','1';'b','2';'c','3';'d','4'});

% 循环走完整个字符串，扩充字典
P = '';     % 初始化P
C = '';     % 初始化C
dic = dic_ini; % 初始化待扩充字典
Out_bits = ''; % 初始化输出码流
for i=1:N   % 循环每一个字符
    Len_dic = size(dic,1);  % 当前字典长度
    C = Str_input(i);
    PC = strcat(P,C);
    for m=1:Len_dic    % 循环判断整个字典是否有当前的PC
        if strcmp(PC, dic(m,1))==1
            P = PC;
            break;
        else if m==Len_dic    % PC不在当前的字典里
                % 更新字典
                dic(Len_dic+1,1) = PC;
                dic(Len_dic+1,2) = num2str(Len_dic+1);
            
                % 找到P在字典的位置，并输出相应码流
                for n=1:Len_dic    % 循环判断整个字典中当前P的位置
                    if strcmp(P, dic(n,1))==1
                    Out_bits = strcat(Out_bits,num2str(n));
                    end
                end
                
                % 更新P
                P = Str_input(i);
            end
        end
    end
end
% 将最后一步的输出码流加上
% 找到P在字典的位置，并输出相应码流
for n=1:Len_dic    % 循环判断整个字典中当前P的位置
    if strcmp(P, dic(n,1))==1
    Out_bits = strcat(Out_bits,num2str(n));
    end
end

% 输出初始字典
fprintf('初始字典:\n');disp(dic_ini);
% 输出LZW编码后的码字流
fprintf('LZW编码后的码字流:\t');disp(Out_bits);
% 输出扩充的字典
fprintf('扩充字典:\n');disp(dic);

