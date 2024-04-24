%Ayden Hession 
%Assignment 5
%CP5.7

% Part A
CNumerator=[2]; 
CDenominator=[1]; 
CSystem = tf(CNumerator,CDenominator);
SNumerator=[-10]; 
SDenominator=[1 10]; 
S_System = tf(SNumerator,SDenominator);
GNumerator=[-1 -5]; 
GDenominator=[1 3.5 6 0]; 
GSystem = tf(GNumerator,GDenominator);
C_S_System = series(CSystem,S_System);
C_S_and_G_System = series(C_S_System,GSystem);
Feedback_System = feedback(C_S_and_G_System,[1]);
f=0.5*pi/180; % Convert to radian/second to frequenceey
t=[0:0.1:10]; u=f*t;
[y,x]=lsim(Feedback_System,u,t);
(y(length(t),1)-u(1,length(t)))*180/pi
subplot(211)
plot(t,y*180/pi,'g',t,u*180/pi,'--m'), grid % Green solid, purple dashed
xlabel('Time (sec)'),ylabel('theta')
title('Constant gain C(s) = 2, input (dashed) & theta (solid)')

% Part B
CNumerator=[2 1]; 
CDenominator=[1 0]; CSystem = tf(CNumerator,CDenominator);
[ANumerator,ADenominator]=series(CNumerator,CDenominator,SNumerator,SDenominator);
C_S_System = series(CSystem,S_System);
C_S_and_G_System = series(C_S_System,GSystem);
Feedback_System = feedback(C_S_and_G_System,[1]);
[y,x]=lsim(Feedback_System,u,t);
(y(length(t),1)-u(1,length(t)))*180/pi
subplot(212), plot(t,y*180/pi,'g',t,u*180/pi,'--m'), grid
xlabel('time (sec)'),ylabel('theta')
title('PI Controller C(s) = 2 + 1/s, input (dashed) & theta (solid)')
