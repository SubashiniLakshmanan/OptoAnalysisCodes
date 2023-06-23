function [data] = filtering(Fs, e1, wn)
[z,p,k] = butter(2,[5 300]/(1000/2), 'pass');
[sos_var,g] = zp2sos(z, p, k);
dat= filtfilt(sos_var,g,e1);
Hd = dfilt.df2sos(sos_var, g);
data = filter(Hd,e1);

wo = 60/(1000/2);  
bw = wo/35;
[b,a] = iirnotch(wo,bw);