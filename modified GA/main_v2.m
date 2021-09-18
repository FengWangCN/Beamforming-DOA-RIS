clc
clear all
close all

t=cputime;
%�Ŵ���������
NUMPOP = 250;%��ʼ��Ⱥ��С�����տ�ʼ�ı������
LENGTH = 16; %�����Ʊ��볤�ȣ��˴�����Ҫ���룬ֱ��Ϊ�Ա���
ITERATION = 50;%��������
CROSSOVERRATE = 0.7;%�ӽ���
SELECTRATE = 0.5;%ѡ����
VARIATIONRATE = 0.001;%������


for c=1:1
%��ʼ����Ⱥ
pop_0 = unifrnd(0,1,1,NUMPOP);%�������һϵ�������0-1֮�����
pop = binaryCoding(pop_0,LENGTH);%�������������ת��Ϊ��������
pop_P = MATRIX_P(pop,LENGTH);  %ת��Ϊ��������

%��ʼ����
for time = 1:ITERATION
    %�����ʼ��Ⱥ����Ӧ��
    fitness_1 = Fitness_obj(pop_P,LENGTH);
    %������Ӧ�ȣ�ȷ�����ս����֮ǰ�Ĳ�ͬ
    if c == 1
        fitness = fitness_1;
    else
        %weight�����������ɵľ���������Ƿ����������ɸѡ
%         fitness = weight(valid(1:c-1,:),fitness_1,pop_P);
        %weight_cor�������ϵ���ľ���ֵ����0.5�ͱ�ɸ��
        fitness = weight_cor(valid(1:c-1,:),fitness_1,pop_P);
    end 
    %ѡ��
    pop_P = Select(fitness,pop_P,SELECTRATE);
    %����
    binpop = Coding(pop_P,LENGTH);
    %����
    kidspop = crossover(binpop,NUMPOP,CROSSOVERRATE);
    %����
    kidspop = Variation(kidspop,VARIATIONRATE);
    %����
    kidspop = MATRIX_P(kidspop,LENGTH);
    %������Ⱥ
    pop_P = [pop_P;kidspop];
    %��¼ÿ�ε�ƽ����Ӧ��
    record(1,time) = mean(fitness);
end
figure(1)
plot(1:ITERATION,record);
figure(2)
[theta,AF] = graph_p(pop_P(1,:));
plot(theta,AF);
valid(c,:) = pop_P(1,:);

end
cputime-t