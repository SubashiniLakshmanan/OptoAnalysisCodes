cd 'O:\Optogenetics_AGSL\Animal_1';
xx=dir('EPhys*.mat');
nfiles= length(xx);
 
x = load('og_exp_ac_ofc.mat');

color_data = struct('c1', [1 0 0],'c2', [1 1 0],'c3', [0 0 0], 'c4',[0 1 0], 'c5',[0 1 1], 'c6',[0 0 1],....
    'c7', [0 0 0], 'c8',[0.6350 0.0780 0.1840], 'c9', [0.4940 0.1840 0.5560],...
    'c10',[0.8500 0.3250 0.0980], 'c11',[0 0.4470 0.7410],...
    'c12',[0.9290 0.6940 0.1250], 'c13',[0.3010 0.7450 0.9330],...
    'c14',[0.4660 0.6740 0.1880],'c15', [0.6000 0.7000 0.8000], 'c16',[0.9000 0.3000 0.8880]);

colfield = fieldnames(color_data);
Fs = 1000;
respstart = 200;
mintrial = 25;
%testk =[1 7];

for k = 1:1:nfiles
sortdata{k} = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
    'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
    'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);
avgdata{k} = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
    'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
    'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);

fieldn = fieldnames(sortdata{k});
trial = x.og_exp_ac_ofc{1}.niter{k};

for i = 1:1:trial
 
Rawdata = x.og_exp_ac_ofc{1}.rawdata{1,k}(i);

for j = 1:1:length(fieldn) % trial
    
data = Rawdata{1}(:,j); % j - channel Rawdata{1}(:,1) -> provides the iteration structure with 16 channels
cd O:\Optogenetics_AGSL\AnalysisCodes
Notchdata = butterfilt(2, [49 51], 1000, 'stop', data);
Filtdata = butterfilt(2, [5 300], 1000, 'bandpass', Notchdata);

sortdata{k}.(fieldn{j})(:,i)= Filtdata;

spon = sortdata{k}.(fieldn{j})(1:respstart,i); % kth file, ith trial, jth channel;
resp = sortdata{k}.(fieldn{j})(respstart+1:end,i);  % kth file, ith trial, jth channel;
rmsspon{k}{j}(i) = rms(spon);
rmsresp{k}{j}(i) = rms(resp);

end
end

for m =1:1:length(fieldn) %channel
    trialdata = sortdata{k}.(fieldn{m});
    data = transpose(trialdata);
    avgdata{k}.(fieldn{m}) = mean(data);
    % = sortdata{1}.ch1(1:200,1); 
    %resp = sortdata{1}.ch1(201:end,1);
    %rmsspon = rms(spon);
    %rmsresp = rms(resp);
    if trial > mintrial
       [H, P, CI, ST] = ttest(rmsspon{k}{m}, rmsresp{k}{m});
    else
        [H, P, CI, ST] = ttest(rmsspon{k}{m}(1:trial), rmsresp{k}{m}(1:trial));
    end
    statrmsH{k}(m) = H;
    len = length(avgdata{k}.(fieldn{m}));
    t = 0:1/Fs:(len*(10^-3))- 1*(10^-3);    
    figure(k);
    pavg(m) = plot(t, avgdata{k}.(fieldn{m}), 'color', color_data.(colfield{m}));
    hold on;
    title(['average of filtered data for trial = ', num2str(trial)]);
 
end

for n = 1:1:length(fieldn)
    
    if statrmsH{k}(n) == 0
        analysis{k}.rmsttest{n}= 'S';
    else
         analysis{k}.rmsttest{n}= 'NS';
    end
    
    
end

legend(pavg);
%clear sortdata;
clear data trialdata spon resp;

end
cd 'O:\Optogenetics_AGSL\Animal_1';
save analysis;
save sortdata;

