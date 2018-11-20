i = 12;
design_epsilon = 0.4;

scatter(1,design_epsilon,5,'b','filled','MarkerFaceAlpha',0.5);
hold on;

xtick_values = ones(1,i);

for j = 4:i
    channels = channel_polarization(j,design_epsilon);
    blockLength = 2^j * ones(1,2^j);
    xtick_values(1,j) = 2^j;
    scatter(blockLength,channels,5,'b','filled');
    hold on;
end

xlim([16,2^i]);
ylim([0,1]);
ylabel('Erasure probablity','FontSize',12);
xlabel('Block-length','FontSize',12);
xticks(xtick_values(6:end));
xtickangle(90);

xt = get(gca,'XTick');
set(gca,'FontSize',8);

hold off;