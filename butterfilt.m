%n -> order of the filter, w -> cutoff freq, fs -> sampling frequency, type
%-> type of filter, x -> data to be filtered

function [data] = butterfilt(n, w, fs, type, x)

[z,p,k] = butter(n,w/(fs/2), type);
[sos_var,g] = zp2sos(z, p, k);
%Hd = dfilt.df2sos(sos_var, g);
data= filtfilt(sos_var,g,x);