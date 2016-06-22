frange = 20:0.1:20000;

selecti = 3000;
select = randi(size(frange,2), selecti,1);

avgrate = 300;

shifti = randi(selecti, avgrate, 1);

select1 = [];

for i = shifti'
    
    select1(:,i) = circshift(select,i-1);
    
end

select2 = sum(select1,2)/avgrate;

hist(select2,30)
mean(select2)
std(select2)

sound(sin(2*pi*mean(select2)*linspace(0,1,44100)),44100)

noisegen(select2,0.5,44100);