maxF = round(maxval*100000);
   [nA, nF, Tr, Ch] = ind2sub(size(maxval),find(maxF >= 1500));
   
   for maxi = 1:1:length(nA)
   maxdata = sortdata{nA(maxi),nF(maxi)}.(fieldn{Ch(maxi)})(:,Tr(maxi));
   plotdata(t,data,m,stimy,file)
   figure;
   subplot(4,4,m),plot(t,data)
   hold on;
   plot(t,stimy, 'r');

   end
   
   
   for nA = 1:1:Anim
    nfiles = x.og_exp_ac_ofc{nA}.fnum;
    for nF = 1:1:nfiles
       
        for nch = 1:1:nchannel
            trial = x.og_exp_ac_ofc{nA}.niter{nF};
            for Tr = 1:1:trial  
            data = sortdata{nA,nF}.(fieldn{nch})(:,Tr);
   %figure;
   subplot(4,4,nch),plot(t,data)
   %hold on;
   %plot(t,stimy, 'r');
            end
            Tr
            pause
            clf
        end
    end
   end

   nchannel = 16;
for nA = 1:1:AnimNo
    nfiles = x.og_exp_ac_ofc{nA}.fnum;
    for nF = 1:1:nfiles
       figure
       trial = x.og_exp_ac_ofc{nA}.niter{nF};
        for Tr = 1:1:trial 
            
            for  nch = 1:1:nchannel
            data = sortdata{nA,nF}.(fieldn{nch})(:,Tr);
            subplot(4,4,nch),plot(t,data)
            hold on;
            plot(t,stimyplot{nA,nF,nch,Tr}, 'r');
            dataF = round(data*100000);
            data(dataF<15000) = NaN;
            plot(t,data, 'g *','MarkerSize',2);
            end
            pause
            clf
        end
    end
end