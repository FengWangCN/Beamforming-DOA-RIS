function fitness = weight(p_matrix,fitness_1,pop_P)
%%%%%%���룺
%%%%%%      p_matrix:������Ĳ�������������������ɵľ���
%%%%%%      fitness_1:��֪����Ӧ��
%%%%%%      pop_P:��fitness_1��Ӧ����Ⱥ��ÿһ�ж���һ���µı���
%   ����һ���µ�Լ��
%   ���µ���������ԭʼ�����һ���µľ���
%   ���������ȣ���������������Ͳ����仯
%               �����С���������͸�������Ӧ����Ӧ�ȳ�0.1
fitness=fitness_1;
for i=1:size(pop_P,1)
    PP=[p_matrix;pop_P(i,:)];
        if rank(PP)==size(PP,1)
            continue
        else
            fitness(i)=0*fitness(i);
        end
end
end

