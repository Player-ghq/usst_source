# coding:gbk
#LZW����
string =input('��������Ҫѹ�����ַ�����')
dictionary = {chr(i): i for i in range(1, 123)}#����ASC������ֵ�1

last = 256#�µı����ص�256λ��ʼ
p = ""#����ǰһ���ַ�����ʼΪ��
result1 = []#����һ����������Ϊ�������

for c in string:  #cΪ��һ���ַ������c���ַ�����ִ��ѭ����ִ����һ�κ�cָ����һ���ַ�
    pc = p + c    #��ǰ�������ַ����һ���µ��ַ���pc��ʾ
    if pc in dictionary:  #���pc���ֵ��У���pc��Ϊǰһ���ַ�
        p = pc
    else:
        result1.append(dictionary[p])  #���pc�����ֵ��У���ǰһ���ַ��������
        dictionary[pc] = last    #��pc���벢�����ֵ�
        last += 1
        p = c   #Pָ����һ���ַ�

if p != '':   #�������һ���ַ�
   result1.append(dictionary[p])
x2 = len(result1)   #������볤��
print('ѹ����ı���Ϊ��',result1)  #�������


#����
dictionary2 = {i: chr(i) for i in range(1, 123)}  #������ASC�����ֵ�2
last2 = 256

result2 = []
p = result1.pop(0)     #�ѱ���1��p���������������ɾ��
result2.append(dictionary2[p])   #�ѱ���1������ַ���������������

for c in result1:  #��Ϊ����1ɾ���ˣ�����c�ӵڶ������뿪ʼ
    if c in dictionary2:
        entry = dictionary2[c]
    result2.append(entry)   #������������ַ���������������
    dictionary2[last2] = dictionary2[p] + entry[0]   #��ǰ��������������ַ�����µ��ַ������ֵ�2��
    last2 += 1
    p = c

print('������Ϊ��')
print(''.join(result2)) #�����������Ϊ�ַ�����ʽ

x1 = len(string)  #����������ַ�������
x3 = (x2*9)/(x1*8)  #����ѹ����
print('�ַ������ȣ�',x1)
print('����󳤶ȣ�',x2)
print('LZW��ѹ���ȣ�',x3)
