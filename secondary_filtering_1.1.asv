function[dat data] = secondary_filtering(x, y, Fs)
x = load('og_exp_ac_ofc.mat');
y = x.og_exp_ac_ofc{1}.rawdata{1}{1};
yt = 1:1:length(y(:,1));
figure(1);
plot(yt,y(:,1));
title ('raw data iter 1 channel 1')

[z,p,k] = butter(2,[49 51]/(1000/2), 'stop');
[sos_var,g] = zp2sos(z, p, k);
Hd = dfilt.df2sos(sos_var, g);
ndat= filtfilt(sos_var,g,y(:,1));
ndata = filter(Hd,y(:,1));

[z,p,k] = butter(2,[5 300]/(1000/2), 'bandpass');
[sos_var,g] = zp2sos(z, p, k);
Hd = dfilt.df2sos(sos_var, g);
dat= filtfilt(sos_var,g,ndat);
data = filter(Hd,ndata);

figure(2);
datat = 1:1:length(data);
datt = 1:1:length(dat);

plot(datat, data, 'r');
hold on;
plot(datt, dat, 'b');

title('filtered data');


% fft to check the frequency components
yfft = fft(y);
datfft = fft(dat);
datafft = fft(data);
L =  length(y(:,1));

figure(3);
%tfft = 1:1:length(yfft);
P2 = abs(yfft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = 1000*(0:(L/2))/L;
plot(f,P1) 
%plot(tfft, yfft);
title('fft of raw data')

P2 = abs(datfft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = 1000*(0:(L/2))/L;
figure(4);
plot(f,P1) 
title('fft of filtered with filtfilt')

P2 = abs(datafft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = 1000*(0:(L/2))/L;
figure(5);
plot(f,P1)
title('fft of filtered with filter');

w = gausswin(50, 4);
datfilt = filter(w,1,dat);
datfiltt = 1:1:length(datfilt);
figure(6);
plot(datfiltt,datfilt);
hold on;
w = gausswin(100, 4);
datfilt = filter(w,1,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'r');
w = gausswin(150, 4);
datfilt = filter(w,1,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'g');
w = gausswin(200, 4);
datfilt = filter(w,1,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'c');
title('SD of gaussian window varied');
hold off;
legend({'50','100','150','200'});

w = gausswin(150, 4);
datfilt = filter(w,1,dat);
datfiltt = 1:1:length(datfilt);
figure(7);
plot(datfiltt,datfilt);
hold on;
w = gausswin(150, 4);
datfilt = filter(w,5,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'r');
w = gausswin(150, 4);
datfilt = filter(w,10,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'g');
w = gausswin(150, 4);
datfilt = filter(w,20,dat);
datfiltt = 1:1:length(datfilt);
plot(datfiltt,datfilt,'c');
title('differing the b parameter of the filter');
hold off;
legend({'1','5','10','20'});



