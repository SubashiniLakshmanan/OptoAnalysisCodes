function plotrespstren (ANo, nch)
% function plotting the response strength vs other parameters of the input
% signal
%dirname = ['O:\Optogenetics_AGSL\Animal_',num2str(ANo)];
%cd (dirname)

x = load('E:\SL_data_code\OPTO\working_folder\og_exp_ac_ofc.mat');
y = load('E:\SL_data_code\OPTO\working_folder\analysis.mat');
PWval = [0.020, 0.010, 0.005];
PHval= [1.0, 0.70, 0.6, 0.5,0.40,0.30,0.25,0.20,0.15,0.1];
numoffiles = length(y.analysis);

for nfile =1:1:numoffiles
   
     elemexist = isempty(y.analysis{ANo,nfile});
    if  elemexist ~= 0
        PWidth(ANo,nfile) = 0;
        PHeight(ANo,nfile) = 0;
       
    else
        
        PWidth(ANo,nfile) = x.og_exp_ac_ofc{ANo}.OptoPP_PARAMS{nfile}.protocol.stim_dur;
        PHeight(ANo,nfile) = x.og_exp_ac_ofc{ANo}.OptoPP_PARAMS{nfile}.protocol.curr_amp;
     end
     
end

for nfile =1:1:numoffiles
   
for ch =1:1:nch
   
     elemexist2 = isempty(y.analysis{ANo,nfile});
     
    if  elemexist2 ~= 0
     continue;
    else
     resp_stren{ANo}(nfile, ch) = y.analysis{ANo,nfile}.respstren2(ch);
     signific{ANo}(nfile, ch) = y.analysis{ANo,nfile}.rmsttest2(ch);
    end
end
end

%figure('Name',['Pulse height vs response strength for a given pulse width of ', num2str(PWval(1)), 'animal ',num2str(ANo)], 'NumberTitle','off');

for PWHind = 1:1:length(PWval)

[~, PWind, ~]= find(PWidth(ANo,:) == PWval(PWHind));
PHforWi = PHeight(ANo,PWind);
figure('Name',['Response strength vs Pulse height for a given pulse width of ', num2str(PWval(PWHind)), 'animal ',num2str(ANo)], 'NumberTitle','off');

for ch =1:1:nch
for i = 1:1:length(PWind)
    if char(signific{ANo}(PWind(i), ch)) == 'S'
        c = 'b *';
    else 
        c = 'r *';
    end
  
subplot(4,4,ch), plot(PHforWi(i), resp_stren{ANo}(PWind(i),ch),c);
hold on;
end
if (PWHind+1)<= length(PWval)
%figure('Name',['Pulse height vs response strength for a given pulse width of ', num2str(PWval(PWHind+1)), 'animal ',num2str(ANo)], 'NumberTitle','off');
end
end
clear PWind;
end

for PHWind = 1:1:length(PHval)
[~, PHind, ~]= find(PHeight(ANo,:) == PHval(PHWind)); 
 if isempty(PHind) == 1
        PHWindplot = NaN;
        PHWindf = NaN;
        continue 
 else
for n=1:1:length(PHind)
   
    if PHind(n) <=numel(PWidth(ANo,:))
        %str = 'check more'
        PHWindplot(n) = PHind(n);
        PWforHt(n) = PWidth(ANo,PHind(n));
        PHWindf(n) = PHWind;
    else
        %str = 'check less'
        PWforHt(n) =NaN; 
         PHWindplot(n) = NaN;
          PHWindf(n) = NaN;
    end
end

 end

%PHWindplotf(PHWind) = PHWindplot
%if PHWind<=numel(PHWindplot)
   
    figure('Name',['Response Strength vs Pulse Width for a given pulse height of ', num2str(PHval(PHWindf)), 'animal ',num2str(ANo)], 'NumberTitle','off');

for ch =1:1:nch
    for i = 1:1:length(PHWindplot)
    if char(signific{ANo}(PHWindplot(i), ch)) == 'S'
        c= 'b *';
    else 
        c = 'r *';
    end
    
subplot(4,4,ch), plot(PWforHt(i), resp_stren{ANo}(PHWindplot(i),ch),c);
hold on;
   

    end
end
%end
%if (PHWind+1)<= length(PHval)
    %figure('Name',['Pulse width vs response strength for a given pulse height of ', num2str(PHval(PHWind+1)), 'animal ',num2str(ANo)], 'NumberTitle','off');
%end
clear PWforHt  PHWindplot PHWindf;
end