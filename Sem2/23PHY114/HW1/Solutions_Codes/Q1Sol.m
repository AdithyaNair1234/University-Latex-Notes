nel=5;
nn=4;
Kg=zeros(nn*2,nn*2);
Fg=zeros(nn*2,1);
Ug=zeros(nn*2,1);
Fg(6,1)= -1500;
Fg(7,1)= -1000;

E=11.4e6;
A=5e-3;
L1=0.5;
L2=1;
L3=0.5*sqrt(2);
L4=0.5*sqrt(5);
l=[L1 L2 L3 L4 ];
Angle=[0 0 pi-pi/3 pi/2 pi/4];


for ele=1:3
  L=l(ele);
  theta=Angle(ele);
  function Kl = stiffness(E,A,L,theta)
  k=E*A/L;
  Ke=[k 0 -k 0; 0 0 0 0; -k 0 k 0; 0 0 0 0];
  c= cos(theta);
  s= sin(theta);
  R=[c -s 0 0; s c 0 0; 0 0 c -s; 0 0 s c];
  Kl=R*Ke*R';
end
  Kl=stiffness(E,A,L,theta);
  loc1= ele*2-1;
  loc2= loc1+3;
  Kg(loc1:loc2,loc1:loc2)=Kg(loc1:loc2,loc1:loc2)+ Kl;
end

K4= stiffness(E,A,L3,pi/4);
K5= stiffness(E,A,L1,pi/2);
Kg(1,1)+=K4(1,1);
Kg(1,7)+=K4(1,3);
Kg(2,1)+=K4(2,1);
Kg(2,2)+=K4(2,2);
Kg(2,7)+=K4(2,3);
Kg(7,1)+=K4(3,1);
Kg(7,2)+=K4(3,2);
Kg(7,7)+=K4(3,3);
Kg(7,8)+=K4(3,4);
Kg(8,1)+=K4(4,1);
Kg(8,2)+=K4(4,2);
Kg(8,7)+=K4(4,3);
Kg(8,8)+=K4(4,4);
Kg(3,3)+=K5(1,1);
Kg(3,4)+=K5(1,2);
Kg(3,7)+=K5(1,3);
Kg(3,8)+=K5(1,4);
Kg(4,3)+=K5(2,1);
Kg(4,8)+=K5(2,4);
Kg(7,3)+=K5(3,1);
Kg(7,4)+=K5(3,2);
Kg(7,7)+=K5(3,3);
Kg(7,8)+=K5(3,4);
Kg(8,3)+=K5(4,1);
Kg(8,4)+=K5(4,2);
Kg(8,7)+=K5(4,3);
Kg(8,8)+=K5(4,4);

K=Kg(5:end,5:end);
F=Fg(5:end,1);

U=K\F;
Ug(5:end,1)=U;

Fg=Kg*Ug;

p=[0 0 0.5 0 1.5 0 0.5 0.5]';
pnew=Ug+p;


plot(p(1:2:end),p(2:2:end),'--or');
hold on;
plot(pnew(1:2:end),pnew(2:2:end),'-xb');
