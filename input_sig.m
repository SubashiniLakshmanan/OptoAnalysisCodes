%function input_sig (x)

x = load('sortdata.mat');
nfiles = 35;
chlen = 16;
Fs = 1000;

for k =1:1:nfiles
    fieldn = fieldnames(sortdata{k});
    
    for j =1:1:chlen
    data = x.sortdata{k}.(fieldn{j})(:,1);
    lendata = length(data);
    end
        t = 0:1/Fs:(lendata*(10^-3))- 1*(10^-3);    
end
    