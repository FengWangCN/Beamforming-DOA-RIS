function fitness = weight_cor(p_matrix,fitness_1,pop_P)
%%%%%%���룺
%%%%%%      p_matrix:������Ĳ�������������������ɵľ���
%%%%%%      fitness_1:��֪����Ӧ��
%%%%%%      pop_P:��fitness_1��Ӧ����Ⱥ��ÿһ�ж���һ���µı���
%   ����һ���µ�Լ��
%   ���µ���������ԭʼ�����һ���µľ���
%   ���������ϵ��������16��Ԫ��˵�������������֮�����һλ��������ô
%   ���ϵ���ľ���ֵԼΪ0.8819�������ж���������֮�������ԾͿ���ͨ��
%   �ж����ϵ����û�д���0.5��������ھ�ɸ��
fitness=fitness_1;
for i=1:size(pop_P,1)
    PP=[p_matrix;pop_P(i,:)];
    PP=PP.';
    PP_cor=corrcoef(PP);
    jj=size(PP_cor,2);
    for ii=1:size(PP_cor,1)-1 
            if norm(PP_cor(ii,jj))>0.5
                fitness(i)=0*fitness(i);
            end
    end  
end
end

