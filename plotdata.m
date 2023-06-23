function plotdata(t,data,m,stimy, file)

figure(file);
subplot(4,4,m),plot(t,data)
hold on;
plot(t,stimy, 'r');
    
end
    
    %avgdata{k}.(fieldn{m})-> data
    %k ->file