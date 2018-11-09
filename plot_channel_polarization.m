i = 10;

block_legth = zeros(i + 1);

block_legth(1) = 0;

for k=1:i
    block_legth(i+1) = 2^k;
end

plot(0.5,0);
hold on;

for j = 1:i
    plot(channel_polarization(j,0.5),2^j);
    hold on;
end