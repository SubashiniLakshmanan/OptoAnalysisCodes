    ii = 3;
    dirname = ['O:\Optogenetics_AGSL\Animal_',num2str(ii),'\loc1'];

    cd (dirname)
     xx=dir('EPhys*.mat');
     nfiles=length(xx);
     iter= struct('iter1', [], 'iter2', [],'iter3', [], 'iter4', [], ....
            'iter5', [], 'iter6', [], 'iter7', [], 'iter8', [], 'iter9', [], 'iter10', [], ...
            'iter11', [], 'iter12', [], 'iter13', [], 'iter14', [], 'iter15', [], 'iter17', [], ...
            'iter18', [], 'iter19', [], 'iter20', [], 'iter21', [], 'iter22', [], 'iter23', [], ...
            'iter24', [],'iter25', [], 'iter26', [], 'iter27', [], 'iter28', [], 'iter29', [], ...
            'iter30', [], 'iter31', [], 'iter32', [], 'iter33', [], 'iter34', [], 'iter35', []);
     fieldname = fieldnames(iter);

for k = 1:nfiles
      cd(['O:\Optogenetics_AGSL\Animal_',num2str(ii),'\loc1']);
      x = load(xx(k).name);
      ephysdata = x.ephysdata;
      fieldn=length(fieldnames(ephysdata))-1;
      
      
    for tr = 1:length(fieldn)
        
             
                xd = x.ephysdata.(fieldname{tr});
                if length(xd) > 26000
                    dsamp = 40;
                else dsamp = 20;
                end
                
                avgdatax = downsample(xd,dsamp);
                avgdatax = avgdatax(200:end, :);
                Notchdatax = butterfilt(2, [49 51], 1000, 'stop', avgdatax);
                Filtdatax = butterfilt(2, [5 300], 1000, 'bandpass', Notchdatax);
                data = gaussmoth(Filtdatax,2.5);
                ndata{tr} = data(:);
                 
                
    
    end
end

for k = 1:nfiles
    avgdata = avg(data(tr)');
    
    for ch = 1:16
                cd ('O:\Optogenetics_AGSL\AnalysisCodes');  
                
                subplot(4,4,ch),plot(ndata)
                hold on;
                dataF = round(ndata*100000);
                ndata(dataF<15000) = NaN;
                plot(ndata, 'g *','MarkerSize',2);


     end
     pause
     clf
end



% for nA = 18:1:20
%     nfiles = x.og_exp_ac_ofc{nA}.fnum;
%     figure
%     for nF = 1:1:nfiles   
%             for  nch = 1:1:nfield
%                 elemexist = isempty(x.og_exp_ac_ofc{nA}.Optofname{nF});
%                 if elemexist ~= 0
%                     continue;
%                 else
%                 data = avgdata{nA,nF}.(fieldname{nch});
%                 subplot(4,4,nch),plot(data)
%                 hold on;
%                 plot(stimyplot{nA,nF,:}, 'r');
%                 dataF = round(data*100000);
%                 data(dataF<15000) = NaN;
%                 plot(data, 'g *','MarkerSize',2);
%                 title(analysis{nA,nF}.rmsttest2{nch})
%                 end
%             end
%         pause
%         clf
%     end
%    
% end
