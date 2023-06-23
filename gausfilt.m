function [filtdata,filtdatat] = gausfilt(N,alpha,dat)
w = gausswin(N, alpha);
filtdata = filter(w,1,dat);
filtdatat = 1:1:length(filtdata);
%plot(datfiltt,datfilt)