clc;clear;close all;
nn=6; % ������� ��
ps=12; % ���������� ���������
ng=30; % ʳ������ �������
pm=0.05; % ��������� �������
% ������ � ���������� x � ����� �[-10,53]:
g=randi(64,1,ps)-11; 
for gc=1:ng % ���� �������
%�������� ������� 1111111111111
'���� �������� gc='
gc
gt=g
gs=0;%��� ������� ��������� ����������
gt(2,1:ps)=getY(g)
gt(3,:)=0;
for i=1:ps/2
    test=1;
    while test==1
        ig=randi(ps);
        test=gt(3,ig);
    end
    gt(3,ig)=1;
    elem(1)=ig;
    %2
    test=1;
    while test==1
        ig=randi(ps);
        test=gt(3,ig);
    end
    gt(3,ig)=1;
    elem(2)=ig
    %���� �������
    if gt(2,elem(1))<gt(2,elem(2))
        gs(i)=gt(1,elem(1));
    else
        gs(i)=gt(1,elem(2));
    end
end
%��������� 2222222222222222
gs
'����������� ���������'
for psc=1:(ps/4)
        ts=randi(nn-1)+1 %����� ��������� 
       i1=1+2*(psc-1);
       i2=2+2*(psc-1);
       gs(i1)+10;
       gs(i2)+10;
       p1=bitget(gs(i1)+10,6:-1:1) %������ ������ � ������� ������������
       p2=bitget(gs(i2)+10,6:-1:1)%2 ������
       ch10=gs(i1)+10;
       for i=ts:6
           i;
           test_p2i=p2(7-i);
           ch10=bitset(ch10,i,p2(7-i)); % ���������� ��
           bitget(ch10,6:-1:1);
       end
        child=bitget(ch10,6:-1:1)%arhiv
       gs(ps/2+i1)=ch10-10;
        
        ts=randi(nn-1)+1
       ch10=gs(i1)+10;
       for i=ts:6
           i;
           test_p2i=p2(7-i);
           ch10=bitset(ch10,i,p2(7-i)); % ���������� ��
           bitget(ch10,6:-1:1);
       end
       child=bitget(ch10,6:-1:1)%arhiv
        gs(ps/2+i2)=ch10-10;
             
end
g=gs
'������'
gs(1:ps/2)
'������� ���'
gs(ps/2+1:ps)
%�������
for psc=1:ps
    if rand<=pm
    '�������!!!' 
    '���� ������� � psc'
    psc
    em=g(psc)+10
     bitget(em,6:-1:1)
    igen=randi(6)
    gen=bitget(em,igen)
    if gen==0
        gen=1
    else
        gen=0
    end
    em=bitset(em,igen,gen)
    g(psc)=em-10
  
    end
end
%����������
gt=g
gt(2,1:ps)=getY(g);
[minFunc(gc) imin]=min(gt(2,:))
minElem(gc)=gt(1,imin)
end
minFunc
minElem

x=-10:53;
y=getY(x);
minY=min(y)

