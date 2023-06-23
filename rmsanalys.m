%function RMSanalysis(data, analysis)
cd 'O:\Optogenetics_AGSL\Animal_1';
analysis = load('analysis.mat');
sortdata = load('sortdata.mat');

meanresp = mean(sortdata{k}.(fieldn{j})(respstart+1:end,i));
meanrms = mean(rmsresp{k}{j}(iter))

%%mean resp - mean rms..
%% mean resp rms - mean baseline rms -> response strength
% creating the stimulus based on the input parameters from the PP_PARAMS
% plotting pulse width vs response and pulse height vs response