function fitness=Fitness(P,number_N)
%%������Ӧ�Ⱥ�����������ҪѰ����Сֵ����Ӧ�Ⱥ���ΪĿ�꺯��ֵǰ�Ӹ���
for n=1:size(P,1)
    p=P(n,:);
    f=Obj_cal(p,number_N);
    %�˴����뷣������Ҳ��Լ������ͼ���԰�
    fitness(n)=1/f;
end
end