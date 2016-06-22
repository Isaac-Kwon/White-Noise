frange = 20:0.1:20000;

pwidth = 120;
avg = 440;

selecti = 1400;
select = (((randn(selecti,1)*pwidth)+avg) );
select = select.*(select>0);
select(select==0) = [];

close all

figure

hist(select,30)
mean(select)

std(select)
figure
noisegen(select,1,44100);