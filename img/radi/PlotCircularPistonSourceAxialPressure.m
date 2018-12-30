

ka = 20*pi;
zMax = 2.5;
z = Linspace(0,zMax,100000).slice;

t = z * ka / 2 / pi;
pressure = sin(ka / 2 * (sqrt(1+t.^2)- t));

plotPressure = Plot();
plot(z, pressure);
plotPressure.setColor;
plotPressure.setSize('big')
set(gcf, 'Position', [500,500, 1000, 300])
xlabel('$z/z_\mathrm{F}$')
ylabel('Normalized $p$')
text(1.7,-0.5, '$$ka = 2 0\pi$$','fontsize',30)
plotPressure.print(mfilename)