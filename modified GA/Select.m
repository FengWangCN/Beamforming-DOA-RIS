function parentPop=Select(matrixFitness,pop,SELECTRATE)
%%ѡ��
% ���룺��Ӧ��
% pop--��ʼ��Ⱥ
% SELECTRATE--ѡ����
sumFitness=sum(matrixFitness(:));%����������Ⱥ����Ӧ��

accP=cumsum(matrixFitness/sumFitness);%ÿ��Ŀ�����
%%%%���̶�ѡ���㷨
%ÿ�����������һ���ĸ��ʵ���������Ӧ��ֵ��������Ⱥ�и�����Ӧ��ֵ�͵ı�����
%ѡ�����ϴ�
for n=1:round(SELECTRATE*size(pop,1))
    matrix=find(accP>rand);%�ҵ����������ĸ���
    if isempty(matrix)
        continue
    end
    parentPop(n,:)=pop(matrix(1),:);%���׸������������ۻ����ʵ�λ�õĸ����Ŵ���ȥ
end
end
