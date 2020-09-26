clc;
clear all;
n=4;
%ekonomi için tutarlılık oranı hesaplama
E=[1 1/4 1/3 2;
4 1 1/2 3;
3 2 1 5;
1/2 1/3 1/5 1];
[satir1 sutun1]=size(E);
we=[0.133
    0.317
    0.464
    0.085];
carpim1=E*we;
bos1=[];
for i=1:satir1
    a1=0;
    a1=a1+carpim1(i,1)/we(i,1);
    bos1(i)=a1;
end
ort1=(sum(bos1)/4);
ci1=(ort1-n)/(n-1);
ri=[0 0.58 0.9 1.12 1.24 1.32 1.41];
cr1=ci1/ri(n)
if cr1<=0.1
    disp('ekonomi kriteri için matris tutarlı')
end
fprintf('--------------------------------------\n')

%teknik için tutarlılık oranı
T=[1 2 2 1/3;
1/2 1 2 1/3;
1/2 1/2 1 1/5;
3 3 5 1];
[satir1 sutun1]=size(T);
we2=[0.222
0.158
0.096
0.524];
carpim2=T*we2;
bos2=[];
for i=1:satir1
    a2=0;
    a2=a2+carpim2(i,1)/we2(i,1);
    bos2(i)=a2;
end
ort2=(sum(bos2)/4);
ci2=(ort2-n)/(n-1);
cr2=ci2/ri(n)
if cr2<=0.1
    disp('teknik kriteri için matris tutarlı')
end
fprintf('--------------------------------------\n')

%cevresel için tutarlılık oranı
C=[1 3 3 1/5;
1/3 1 1/2 1/7;
1/3 2 1 1/8;
5 7 8 1];
[satir1 sutun1]=size(C);
we3=[0.189
0.066
0.092
0.652];
carpim3=C*we3;
bos3=[];
for i=1:satir1
    a3=0;
    a3=a3+carpim3(i,1)/we3(i,1);
    bos3(i)=a3;
end
ort3=(sum(bos3)/4);
ci3=(ort3-n)/(n-1);
cr3=ci3/ri(n)
if cr3<=0.1
    disp('çevresel kriteri için matris tutarlı')
end
fprintf('--------------------------------------\n')

%sosyal için tutarlılık oranı
S=[1 2 2 8;
1/2 1 2 8;
1/2 1/2 1 6;
1/8 1/8 1/6 1];
we4=[0.439
0.312
0.207
0.042
];
carpim4=S*we4;
bos4=[];
for i=1:satir1
    a3=0;
    a3=a3+carpim4(i,1)/we4(i,1);
    bos4(i)=a3;
end
ort4=(sum(bos4)/4);
ci4=(ort4-n)/(n-1);
cr4=ci4/ri(n)
if cr4<=0.1
    disp('sosyal kriteri için matris tutarlı')
end
fprintf('--------------------------------------\n')

%politik kriteri için tutarlılık oranı
P=[1 1/3 1/3 3;
3 1 1/2 3;
3 2 1 4;
1/2 1/3 1/4 1];
we5=[0.164
0.296
0.447
0.092];
carpim5=P*we5;
bos5=[];
for i=1:satir1
    a5=0;
    a5=a5+carpim5(i,1)/we5(i,1);
    bos5(i)=a5;
end
ort5=(sum(bos5)/4);
ci5=(ort5-n)/(n-1);
cr5=ci5/ri(n)
if cr5<=0.1
    disp('politik kriteri için matris tutarlı')
end
fprintf('--------------------------------------\n')

