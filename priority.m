clear all;
clc;
%ekonomi kriterine göre 
E=[1 1/4 1/3 2;
4 1 1/2 3;
3 2 1 5;
1/2 1/3 1/5 1];
[satir sutun]=size(E);

disp('Ekonomi kriterine göre karşılaştırma')

for j=1:sutun
sumc=0;
for i=1:satir
sumc=sumc+E(i,j);
end
for i=1:satir
E(i,j)=E(i,j)/sumc;
end
end

PE=[];

for i=1:satir
suml=0;
 for j=1:sutun
suml=suml+E(i,j);
 end
RP1=suml/sutun;
PE(i)=RP1;
PE=PE';
fprintf('%.3f\n',RP1)
end
fprintf('\n')

%tekniğe göre karşılaştırma
T=[1 2 2 1/3;
1/2 1 2 1/3;
1/2 1/2 1 1/5;
3 3 5 1];
[satir sutun]=size(T);

disp('Teknik kriterine göre karşılaştırma')

for j=1:sutun
sumc=0;
for i=1:satir
sumc=sumc+T(i,j);
end
for i=1:satir
T(i,j)=T(i,j)/sumc;
end
end

PT=[];

for i=1:satir
suml=0;
 for j=1:sutun
suml=suml+T(i,j);
 end
RP2=suml/sutun;
PT(i)=RP2;
PT=PT';
fprintf('%.3f\n',RP2)
end
fprintf('\n')

%çevresel kriterine göre
C=[1 3 3 1/5;
1/3 1 1/2 1/7;
1/3 2 1 1/8;
5 7 8 1];
[satir sutun]=size(C);

disp('Çevresel kriterine göre karşılaştırma')

for j=1:sutun
sumc=0;
for i=1:satir
sumc=sumc+C(i,j);
end
for i=1:satir
C(i,j)=C(i,j)/sumc;
end
end

PC=[];

for i=1:satir
suml=0;
 for j=1:sutun
suml=suml+C(i,j);
 end
RP3=suml/sutun;
PC(i)=RP3;
PC=PC';
fprintf('%.3f\n',RP3)
end
fprintf('\n')

%Sosyal kriterine göre
S=[1 2 2 8;
1/2 1 2 8;
1/2 1/2 1 6;
1/8 1/8 1/6 1];
[satir sutun]=size(S);

disp('Sosyal kriterine göre karşılaştırma')

for j=1:sutun
sumc=0;
for i=1:satir
sumc=sumc+S(i,j);
end
for i=1:satir
S(i,j)=S(i,j)/sumc;
end
end

PS=[];

for i=1:satir
suml=0;
 for j=1:sutun
suml=suml+S(i,j);
 end
RP4=suml/sutun;
PS(i)=RP4;
PS=PS';
fprintf('%.3f\n',RP4)
end
fprintf('\n')

%politik kriterine göre
P=[1 1/3 1/3 3;
3 1 1/2 3;
3 2 1 4;
1/2 1/3 1/4 1];
[satir sutun]=size(P);

disp('Politik kriterine göre karşılaştırma')

for j=1:sutun
sumc=0;
for i=1:satir
sumc=sumc+P(i,j);
end
for i=1:satir
P(i,j)=P(i,j)/sumc;
end
end

PP=[];

for i=1:satir
suml=0;
 for j=1:sutun
suml=suml+P(i,j);
 end
RP5=suml/sutun;
PP(i)=RP5;
PP=PP';
fprintf('%.3f\n',RP5)
end
fprintf('\n')
%ana kriter ağırlıkları 
CRP=[0.35 0.26 0.12 0.15 0.12];
%alt kriter ağırlıkları
SRP=[0.095 0.057 0.050 0.056 0.073];
[satira sutuna]=size(SRP);
[satirp sutunp]=size(CRP);
[satir1 sutun1]=size(PE);
[satir2 sutun2]=size(PT);
[satir3 sutun3]=size(PC);
[satir4 sutun4]=size(PS);
[satir5 sutun5]=size(PP);

BM=[];

for i=1:satir1
BM(i,1)=PE(i,1);
BM(i,2)=PT(i,1);
BM(i,3)=PC(i,1);
BM(i,4)=PS(i,1);
BM(i,5)=PP(i,1);

end

for i=1:satir1
M=0;
for j=1:sutunp
M=M+BM(i,j)*CRP(1,j)*SRP(1,j);
end
W(i)=M;

end

W'