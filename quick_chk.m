%load the file

for j = 1:25
    for c = 1:32
    eval(sprintf('dd(:,c,j) = data.ephysdata.iter%i(:,c);',j));
    end
end

cd O:\Optogenetics_AGSL\AnalysisCodes

for iter = 1:25
datasamp = resample(dd(:,19,iter),50,1000);
Notchdata = butterfilt(2, [49 51], 1000, 'stop', datasamp);
Filtdata = butterfilt(2, [5 300], 1000, 'bandpass', Notchdata);
gaussfilt(:,iter) = gaussmoth(Filtdata,3);
end

avgb4 = mean(gaussfilt(200:end,:)');

spon = sortdata{ANo,k}.(fieldname{j})(1:respstart,i); % kth file, ith trial, jth channel;
median_spon = median(spon);
sortdata{ANo,k}.(fieldname{j})(:,i) = sortdata{ANo,k}.(fieldname{j})(:,i) - median_spon;

eval(sprintf('yy(:,kk) = avgb4.ephysdata.iter%i(:,17);',kk));
eval(sprintf('xxyy(:,kk) = xy.ephysdata.iter%i(:,17);',kk));
eval(sprintf('aa(:,kk) = a.ephysdata.iter%i(:,17);',kk));

