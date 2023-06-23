AnimNo = 6;

for ANo = 1:1:AnimNo
    cd O:\Optogenetics_AGSL\AnalysisCodes
    x = load('og_exp_ac_ofc.mat');
    dirname = ['O:\Optogenetics_AGSL\Animal_' num2str(ANo),'\loc18'];
    cd (dirname)
    xx=dir('EPhys*.mat');
    nfiles= length(xx);
    
    color_data = struct('c1', [1 0 0],'c2', [1 1 0],'c3', [0 0 0], 'c4',[0 1 0], 'c5',[0 1 1], 'c6',[0 0 1],....
        'c7', [0 0 0], 'c8',[0.6350 0.0780 0.1840], 'c9', [0.4940 0.1840 0.5560],...
        'c10',[0.8500 0.3250 0.0980], 'c11',[0 0.4470 0.7410],...
        'c12',[0.9290 0.6940 0.1250], 'c13',[0.3010 0.7450 0.9330],...
        'c14',[0.4660 0.6740 0.1880],'c15', [0.6000 0.7000 0.8000], 'c16',[0.9000 0.3000 0.8880]);
    
    colfield = fieldnames(color_data);
    Fs = 1000;
    respstart = 300;
    basestart = 100;
    mintrial = 25;
    cd O:\Optogenetics_AGSL\AnalysisCodes
    
    %%
    for k = 1:1:nfiles
        sortdata{ANo,k} = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
            'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
            'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);
        avgdata{ANo,k} = struct('ch1', [], 'ch2', [],'ch3', [], 'ch4', [], ....
            'ch5', [], 'ch6', [], 'ch7', [], 'ch8', [], 'ch9', [], 'ch10', [], ...
            'ch11', [], 'ch12', [], 'ch13', [], 'ch14', [], 'ch15', [], 'ch16', []);
        
        fieldname = fieldnames(sortdata{ANo, k});
        nfield = length(fieldname);
        trial = x.og_exp_ac_ofc{ANo}.Optoniter{k};
        stimType = x.og_exp_ac_ofc{ANo}.stimtype{k};
        
        switch num2str(stimType)
            case 'Opto'
                
                stimDur = x.og_exp_ac_ofc{ANo}.OptoPP_PARAMS{k}.protocol.stim_dur;
                isiDur = x.og_exp_ac_ofc{ANo}.OptoPP_PARAMS{k}.protocol.isi_dur;
                n_stims = x.og_exp_ac_ofc{ANo}.OptoPP_PARAMS{k}.protocol.n_stims;
                
                for i = 1:1:trial
                    %%
                    Optorawdata = x.og_exp_ac_ofc{ANo}.Optorawdata{1,k}(i);
                    
                    
                    for j = 1:1:nfield % trial
                        
                        data = Optorawdata{1}(:,j); % j - channel Optorawdata{1}(:,1) -> provides the iteration structure with 16 channels
                        
                        Notchdata = butterfilt(2, [49 51], 1000, 'stop', data);
                        Filtdata = butterfilt(2, [5 300], 1000, 'bandpass', Notchdata);
                        gaussfilt = gaussmoth(Filtdata,2.5);
                        sortdata{ANo,k}.(fieldname{j})(:,i)= gaussfilt;
                        
                        spon = sortdata{ANo,k}.(fieldname{j})(1:respstart,i); % kth file, ith trial, jth channel;
                        median_spon = median(spon);
                        sortdata{ANo,k}.(fieldname{j})(:,i) = sortdata{ANo,k}.(fieldname{j})(:,i) - median_spon;
                        
                        [t,respstart_div,respend_div,basestart_div,stim_durdiv,isi_durdiv, baseend_div] = stimdiv(sortdata{ANo,k}.(fieldname{j})(:,i),Fs,respstart,basestart,stimDur,isiDur,n_stims);
                        
                        if basestart_div < 0
                            continue;
                        else
                            bshift_spon1 = sortdata{ANo,k}.(fieldname{j})(basestart_div:baseend_div,i);   % after shifting the baseline
                            bshift_resp1 = sortdata{ANo,k}.(fieldname{j})(respstart_div:respend_div,i);
                            
                            rmsspon1{k}{j}(i) = rms(bshift_spon1);
                            rmsresp1{k}{j}(i) = rms(bshift_resp1);
                            % h = spectrum.welch;
                            % psdresp = psd(h,sortdata{ANo,k}.(fieldn{j})(basestart_div:baseend_div,i),'Fs',Fs);
                            % psdresp{k}{j}{i} = psd(sortdata{ANo,k}.(fieldn{j})(basestart_div:baseend_div,i))-psd(sortdata{ANo,k}.(fieldn{j})(respstart_div:respend_div,i));
                            maxval(ANo,k,i,j) = max(sortdata{ANo,k}.(fieldname{j})(:,i));
                        end
                    end
                end
                
                for chan = 1:nfield
                    trialdata = sortdata{ANo,k}.(fieldname{chan});
                    data = transpose(trialdata);
                    avgdata{ANo,k}.(fieldname{chan}) = mean(data);
                end
                
                for tr = 1:1:trial
                    for c =1:1:nfield
                        len2 = length(avgdata{ANo,k}.(fieldname{chan}));
                        stimt = 0:1/Fs:(len2*(10^-3))- 1*(10^-3);
                        [~, colstimt, ~] = find(stimt == respstart/Fs);
                        
                        stimy  = zeros(1,length(t));
                        
                        for div = 0:stim_durdiv:((n_stims)*(isi_durdiv+stim_durdiv))-(1*(isi_durdiv+stim_durdiv))
                            
                            qodiv = div/stim_durdiv;
                            
                            if mod(qodiv,2) ~=0 && div ~= (n_stims)*(stim_durdiv+isi_durdiv)
                                divst = div+colstimt;
                                stimy(1,divst:divst+isi_durdiv) = min(avgdata{ANo,k}.(fieldname{chan})); % stimy(1,divst:divst+isi_durdiv) = min(avgdata{ANo}{k}.(fieldn{m}));
                                
                            elseif mod(qodiv,2) ==0 && div ~= (n_stims)*(stim_durdiv+isi_durdiv)
                                divst = div+colstimt;
                                stimy(1,divst:divst+isi_durdiv) = max(avgdata{ANo,k}.(fieldname{chan})); %stimy(1,divst:divst+isi_durdiv) = max(avgdata{ANo,k}.(fieldn{m}));
                                
                            end
                            
                        end
                        
                    end
                    
                end
                
                stimyplot{ANo,k,:} = stimy
                
                %%
                for m =1:1:nfield %channel
                    
                    if basestart_div < 0
                        continue;
                    else
                        [t,respstart_div,respend_div,basestart_div,stim_durdiv,isi_durdiv] = stimdiv(avgdata{ANo,k}.(fieldname{m}),Fs,respstart,basestart,stimDur,isiDur,n_stims);
                        avgbase{ANo,k,m} = avgdata{ANo,k}.(fieldname{m})(:,basestart_div:baseend_div);
                        avgresp{ANo,k,m} = avgdata{ANo,k}.(fieldname{m})(:,respstart_div:respend_div);
                        
                        
                        if trial == mintrial
                            [H1, P1, CI1, ST1] = ttest(rmsspon1{k}{m}, rmsresp1{k}{m});
                            respStrength1{k}(m) = mean(rmsresp1{k}{m}) - mean(rmsspon1{k}{m});
                        else
                            [H1, P1, CI1, ST1] = ttest(rmsspon1{k}{m}(1:trial), rmsresp1{k}{m}(1:trial));
                            respStrength1{k}(m) = mean(rmsresp1{k}{m}(1:trial)) - mean(rmsspon1{k}{m}(1:trial));
                        end
                        
                        statrmsH{k}(m) = H1;
                        analysis{ANo,k}.respstren1 = respStrength1{k};
                        
                        if statrmsH{k}(m) == 0
                            analysis{ANo,k}.rmsttest1{m}= 'NS';
                            
                        else
                            analysis{ANo,k}.rmsttest1{m}= 'S';
                        end
                        
                        if trial == mintrial
                            
                            stimploty = stimyplot{ANo,k,:};
                            psdstimy = psd(stimyplot{ANo,k,:});
                            [stimfreq,~,~] = find(psdstimy == max(psdstimy));
                            
                            stimDur
                            max(psdstimy)
                            for tt = 1:1:trial
                                psdbase(tt,:) = psd(sortdata{ANo,k}.(fieldname{m})(basestart_div:baseend_div,tt));
                                psdresp(tt,:) = psd(sortdata{ANo,k}.(fieldname{m})(respstart_div:respend_div,tt));
                            end
                            
                            [H2, P2, CI2, ST2] = ttest(psdbase(:,stimfreq),psdresp(:,stimfreq));
                            respStrength2{k}(m) = mean(psdresp(:,stimfreq))-mean(psdbase(:,stimfreq));
                            
                        else
                            
                            stimploty = stimyplot{ANo,k,:};
                            psdstimy = psd(stimploty);
                            
                            [stimfreq,~,~] = find(psdstimy == max(psdstimy));
                            
                            for tt = 1:1:mintrial
                                pbase = psd(sortdata{ANo,k}.(fieldname{m})(basestart_div:baseend_div,tt));
                                psdbase(tt,:) = pbase(:,1)
                                presp = psd(sortdata{ANo,k}.(fieldname{m})(respstart_div:respend_div,tt));
                                psdresp(tt,:) = pbase(:,1)

                            end
                            
                            [H2, P2, CI2, ST2] = ttest(psdbase(:,stimfreq),psdresp(:,stimfreq));
                            respStrength2{k}(m) = mean(psdresp(1:mintrial,stimfreq))-mean(psdbase(1:mintrial,stimfreq));
                        end
                        
                        statrmsH{k}(m) = H2;
                        analysis{ANo,k}.respstren2 = respStrength2{k};
                        
                        if statrmsH{k}(m) == 0
                            analysis{ANo,k}.rmsttest2{m}= 'NS';
                            
                        else
                            analysis{ANo,k}.rmsttest2{m}= 'S';
                        end
                    end
                    
                    
                end
                
                % --------------------------------------------------------------------%
                %%
                
                
            case 'Audio'
                
                for i = 1:1:trial
                    %%
                    Optorawdata = x.og_exp_ac_ofc{ANo}.Optorawdata{1,k}(i);
                    
                    
                    for j = 1:1:nfield % trial
                        
                        data = Optorawdata{1}(:,j); % j - channel Optorawdata{1}(:,1) -> provides the iteration structure with 16 channels
                        
                        Notchdata = butterfilt(2, [49 51], 1000, 'stop', data);
                        Filtdata = butterfilt(2, [5 300], 1000, 'bandpass', Notchdata);
                        gaussfilt = gaussmoth(Filtdata,2.5);
                        sortdata{ANo,k}.(fieldname{j})(:,i)= gaussfilt;
                        
                        spon = sortdata{ANo,k}.(fieldname{j})(1:respstart,i); % kth file, ith trial, jth channel;
                        median_spon = median(spon);
                        sortdata{ANo,k}.(fieldname{j})(:,i) = sortdata{ANo,k}.(fieldname{j})(:,i) - median_spon;
                        
                       
                end
                
                
        end
        clear data trialdata spon resp psdbase psdresp;
    end
    end
end
    %%
    cd 'O:\Optogenetics_AGSL\AnalysisCodes'
    save ('analysis.mat','analysis');
    save ('sortdata.mat', 'sortdata');
    
    % for nA = 1:1:AnimNo
    %     nfiles = x.og_exp_ac_ofc{nA}.fnum;
    %     for nF = 1:1:nfiles
    %        figure
    %
    %        trial = x.og_exp_ac_ofc{nA}.Optoniter{nF};
    %         for Tr = 1:1:trial
    %
    %             data = gaussmoth(avgdata{ANo,k}.(fieldn{m}),2.5);
    %             maxavg(ANo,k,m) = max(data);
    %             plot(t,data)
    %             hold on;
    %             plot(t,stimyplot{nA,nF,:}, 'r');
    %             maxavgf = round(maxavg*100000);
    %             maxavg(maxavgf<20000) = NaN;
    %             %plot(t,data, 'g *','MarkerSize',2);
    %             title(analysis{nA,nF}.rmsttest2{nch})
    %          end
    %             pause
    %             clf
    %      end
    % end
    %
    for nA = 1:1:AnimNo
        nfiles = x.og_exp_ac_ofc{nA}.fnum;
        figure
        for nF = 1:1:nfiles
            for  nch = 1:1:nfield
                elemexist = isempty(x.og_exp_ac_ofc{nA}.Optofname{nF});
                if elemexist ~= 0
                    continue;
                else
                    data = avgdata{nA,nF}.(fieldname{nch});
                    plotDatChk = isempty(data);
                    if plotDatChk ~= 1
                        subplot(4,4,nch),plot(t,data)
                        hold on;
                        plot(t,stimyplot{nA,nF,:}, 'r');
                        %dataF = round(data*100000);
                        %data(dataF<15000) = NaN;
                        
                        %plot(t,data, 'g *','MarkerSize',2);
                        title(analysis{nA,nF}.rmsttest2{nch})
                    end
                    
                end
            end
            pause
            clf
        end
        
    end
    
    
    %  figure;
    %
    % for tt = 1:1:trial
    %     for m = 1:1:16
    % subplot(4,4,m),plot(sortdata{ANo,k}.(fieldn{m})(:,tt));
    %
    %     end
    %     pause
    % clf
    % end
    
    