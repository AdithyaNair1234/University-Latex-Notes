pkg load control
s = tf('s');
m = 1; l = 1; g = 10;
TF0 = 1/(m*l^2*s^2 - m*g*l);

ss(TF0)

damp(TF0)

Kp = 50; Kd = 5; Ki = 0;
TFC=pid(Kp,Ki,Kd)

TF = feedback(TFC*TF0,1)

t = 0:0.01:1.5;

step(TF0, t, 'r' , TF, t, 'b');
xlabel('Time (s)');
ylabel('Amplitude');

