function fitness=Fitness_obj(P,number_N)
%%������Ӧ�Ⱥ�����������ҪѰ����Сֵ����Ӧ�Ⱥ���ΪĿ�꺯��ֵǰ�Ӹ���
for n=1:size(P,1)
    p=P(n,:);
    %�˺�����Ч
    f=Obj(p,number_N);
%     f=Obj_change(p,number_N);
   
    fitness(n)=1/f;
%     fitness(n)=-f;
end
end