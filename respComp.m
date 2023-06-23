function plotrespstren (ANo, numoffiles, nch)
% function plotting the response strength vs other parameters of the input
% signal

%dirname = ['O:\Optogenetics_AGSL\Animal_',num2str(ANo)];
%cd (dirname)
x = load('og_exp_ac_ofc.mat');
PWno = [0.020, 0.010, 0.005];
PHno= [1.0, 0.70, 0.6, 0.5,0.40,0.30,0.25,0.20,0.15,0.1];


for nfile =1:1:numoffiles
    nfile
    fieldexist = isfield(x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol,'stim_dur');
     if  fieldexist == 0
          PWidth(ANo,nfile) = 0;
        PHeight(ANo,nfile) = 0;
       
    else
        PWidth(ANo,nfile) = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.stim_dur;
        PHeight(ANo,nfile) = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.curr_amp;
     end
     
end

for nfile =1:1:numoffiles
    nfile
for ch =1:1:nch
    ch
     y = load('analysis.mat');
     resp_stren{ANo}(nfile, ch) = y.analysis{ANo,nfile}.respstren(ch);
     signific{ANo}(nfile, ch) = y.analysis{ANo,nfile}.rmsttest(ch);
end
end

figure('Name',['Pulse height vs response strength for a given pulse width of ', num2str(PWno(1))], 'NumberTitle','off');

for PWn = 1:1:length(PWno)

[~, PW_1, ~]= find(PWidth(ANo,:) == PWno(PWn));
PH = PHeight(PW_1);

for ch =1:1:nch

subplot(4,4,ch), plot(PH, resp_stren{ANo}(PW_1,ch),'*');
title(signific{ANo}(PW_1(PWn), ch));
end
if (PWn+1)<= length(PWno)
figure('Name',['Pulse height vs response strength for a given pulse width of ', num2str(PWno(PWn+1))], 'NumberTitle','off');
end
end

figure('Name',['Pulse width vs response strength for a given pulse height of ', num2str(PHno(1))], 'NumberTitle','off');

for PHn = 1:1:length(PHno)
    PHno(PHn)
[~, PH_1, ~]= find(PHeight{ANo} == PHno(PHn));
PH_1
for n=1:1:length(PH_1)
    if PH_1(n) <=numel(PWidth(ANo,:))
        PW(n) = PWidth(ANo,PH_1(n));
    else
        PW(n) =0;  
    end
    PW
end

for ch =1:1:nch
subplot(4,4,ch), plot(PW, resp_stren{ANo}(PH_1,ch),'*');
title(signific{ANo}(PH_1, ch));

end
if (PHn+1)<= length(PHno)
    figure('Name',['Pulse width vs response strength for a given pulse height of ', num2str(PHno(PHn+1))], 'NumberTitle','off');
end
end

