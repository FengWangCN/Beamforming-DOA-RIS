function binpop= binaryCoding(pop,pop_length)
%%�˺��������������ɳ�ʼ����Ⱦɫ�壬Ϊһϵ�й涨���ȵĶ�������
%���룺pop---������ɵ�һϵ��0~1֮�����
%     pop_length---����ĳ���
% W = log2(pop_length);
pop = round(pop*10^6);
for n = 1:size(pop,2) %��ѭ��
    for k = 1:size(pop,1) %��ѭ��
        dec2binpop{k,n} = dec2bin(pop(k,n));
        lengthpop=length(dec2binpop{k,n});
        for s=1:pop_length-lengthpop %����
            dec2binpop{k,n}=['0' dec2binpop{k,n}];
        end
    end
    binpop{n}=dec2binpop{k,n};
end
end