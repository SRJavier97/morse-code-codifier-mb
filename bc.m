function [x] = bc(f)
%%Genera un beep corto de 400 ms a 1 kHz
amp=1;
fs=20500;  %frecuencia de muestreo
duration=0.4;
%freq=1000
val=0:1/fs:duration;
a=amp*sin(2*pi*f*val); %freq se usa como la frecuencia de default
sound(a,fs);
pause(duration);