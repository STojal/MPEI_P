clc, clearvars,close all

V1 =4:2:100;
V2 = 5:-1:-5;

v3 =linspace(0,1);

B= rand(200,300);
V4 = B(10:15 , 9:12);

x = -pi:(pi/15):pi;
plot(x, sin(4*pi*x))