function P=MATRIX_P(pop,binlength)
%�˺�������һ�����󣬽���������ת��Ϊ������һϵ�ж�������ת��Ϊ����
for ii=1:length(pop)
    for jj=1:binlength
        if str2num(pop{ii}(jj))==0
        P(ii,jj)=1;
        elseif str2num(pop{ii}(jj))==1
            P(ii,jj)=-1;
        end  
    end
end
end