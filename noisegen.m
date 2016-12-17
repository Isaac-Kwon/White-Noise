function noisegen(select, time, divrate)

times = linspace(0,time,divrate*time);

select = select*2*pi;
[W,T] = meshgrid(select,times);

result1 = (10/max(size(select)))*sin(W.*T);

result2 = sum(result1,2);


sound([result2;result2;result2;result2], divrate)

hist(select/(2*pi))
plot(times,result2)

end
