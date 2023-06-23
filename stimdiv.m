function [t, respstart_div,respend_div, basestart_div,stim_durdiv,isi_durdiv, baseend_div] = stimdiv(data,Fs,respstart,basestart,stimDur,isiDur,n_stims)

                len1 = length(data);
                
                t = 0:1/Fs:(len1*(10^-3))- 1*(10^-3);
                [~, respstart_div, ~] = find(t == respstart/Fs);
                %[~, basestart_div, ~] = find(t == basestart/Fs);
                
                %[stim_dur, isi_dur, n_stims] = getstimtime(k, ANo);
                stim_durdiv = stimDur * Fs;
                isi_durdiv = isiDur * Fs;
                
                respend = n_stims*(stim_durdiv + isi_durdiv);
                respend_div = respend+respstart_div;
                stimdurInt = respend_div - respstart_div;
                basestart_div = (respstart_div-1)- stimdurInt;
                baseend_div = respstart_div-1;
                 
                if basestart_div <= 0
                    basestart_div = basestart_div+1;
                    baseend_div = baseend_div+1;
                    respstart_div = respstart_div+1;
                    respend_div = respend_div+1;
                end
                
                if respend ==0
                    basestart_div = NaN;
                    baseend_div = NaN;
                    respstart_div = NaN;
                    respend_div = NaN;
                end