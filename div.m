function [t,respend_div, respstart_div] = stimdiv(data,respstart,Fs,stimDur,isiDur,n_stims)

                len1 = length(data);
                
                t = 0:1/Fs:(len1*(10^-3))- 1*(10^-3);
                [~, respstart_div, ~] = find(t == respstart/Fs);
                
                %[stim_dur, isi_dur, n_stims] = getstimtime(k, ANo);
                stim_durdiv = stimDur * Fs;
                isi_durdiv = isiDur * Fs;
                
                respend_div = n_stims*(stim_durdiv + isi_durdiv);