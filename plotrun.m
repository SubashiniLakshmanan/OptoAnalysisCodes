for nA = 1:2
  x = load('og_exp_ac_ofc.mat');
 
        nfile = x.og_exp_ac_ofc{nA}.fnum;
           for nF = 1:1:nfile
                for nch = 1:16
                plotrespstren (nA, nF, nch)
                end
           end
       
end