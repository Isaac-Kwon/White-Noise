frange = 20:0.1:20000;

selecti = 3000;
select = randi(size(frange,2), selecti,1);

noisegen(select,1,44100);