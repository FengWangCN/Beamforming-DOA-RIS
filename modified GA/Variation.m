function kidspop = Variation(kidspop,VARIATIONRATE)
%Variation ����ĸ���һ��Ƚϵ�
%   ������ǽ�������Ⱥ
%           �Լ�������
for n=1:size(kidspop,2)
    if rand<VARIATIONRATE
        temp = kidspop{n};
        %�����ҵ������λ��
        location = ceil(length(temp)*rand);
        temp = [temp(1:location-1) num2str(~temp(location))...
            temp(location+1:end)];
        kidspop{n} = temp;
    end    
end


