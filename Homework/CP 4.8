%Ayden Hession
%HW4
%CP4.8
%*************
GsNumerator=[10]; 
GsDenominator=[1 10]; 
System = tf(GsNumerator,GsDenominator);

time=[0:0.001:0.5];


%*************
% Part A
%*************

GcNumerator=[2]; 
GCDenominator=[1]; 

Controller = tf(GcNumerator,GCDenominator);

OpenSystem = series(Controller,System);
ClosedSystem = feedback(OpenSystem,[1]);

yk=step(ClosedSystem,time);

%*************
% Part B
%*************

%k1,2 = 2,20 values
GcNumerator=[2 20]; 
GCDenominator=[1 0]; 
Controller = tf(GcNumerator,GCDenominator);

OpenSystem = series(Controller,System);
ClosedSystem = feedback(OpenSystem,[1]);

yp=step(ClosedSystem,time);

%*************
%Part C
%*************

%making plot
plot(time, yk, 'm', time, yp, 'g')
xlabel('Time (sec)'),ylabel('y(time)')
title('Prop controller (Purple) & PI controller (Green)')
