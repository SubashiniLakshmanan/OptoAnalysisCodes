cd 'O:\Optogenetics_AGSL\Animal_1';
xx=dir('EPhys*.mat');
nfiles= length(xx);
 
x = load('og_exp_ac_ofc.mat');
sortdata = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
    'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
    'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);
avgdata = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
    'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
    'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);

fieldn = fieldnames(sortdata);

for k = 1:1:nfiles

trial = x.og_exp_ac_ofc{1}.niter{k};

for i = 1:1:trial
 
Rawdata = x.og_exp_ac_ofc{1}.rawdata{1,k}(i);
i

for j = 1:1:length(fieldn)
    
data = Rawdata{1}(:,j); % j - channel
Notchdata = butterfilt(2, [49 51], 1000, 'stop', data);
Filtdata = butterfilt(2, [5 300], 1000, 'bandpass', Notchdata);

sortdata.(fieldn{j})(:,i)= Filtdata;
j
end
end

for i =1:1:fieldn
    avgdata.(fieldn{i}) = mean(sortdata{i});

end

end


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  