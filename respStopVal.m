function[respend] = respStopVal(ANo, nfile)

cd O:\Optogenetics_AGSL\AnalysisCodes
x = load('og_exp_ac_ofc.mat');

    fieldexist = isfield(x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol,'stim_dur');
     if  fieldexist == 0
          PWidth = 0;
        PHeight = 0;
        nRepeat = 0;
       
    else
        PWidth = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.stim_dur;
        PHeight = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.curr_amp;
        nRepeat = x.og_exp_ac_ofc{ANo}.PP_PARAMS{nfile}.protocol.n_stims;
     end
     
     respend = nRepeat*(PWidth+PHeight);
end
