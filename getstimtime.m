function [stim_dur, isi_dur, n_stims] = getstimtime(numoffiles, ANo)
dirname = ['O:\Optogenetics_AGSL\Animal_',num2str(ANo)];
cd O:\Optogenetics_AGSL\AnalysisCodes
x = load('og_exp_ac_ofc.mat');

for nfile =1:1:numoffiles
    fieldexist = isfield(x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol,'stim_dur');
     if  fieldexist == 0
        stim_dur = 0;
        isi_dur = 0;
        n_stims = 0;
       
    else
        stim_dur = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.stim_dur;
        isi_dur = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.isi_dur;
        n_stims = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.n_stims;
     end
     
end