settings.outformat = "pdf";
size(8cm,0);
defaultpen(fontsize(16pt));

import geometry;
import graph;

real XMIN = -1, XMAX = 1, YMIN = -0.1, YMAX = 1;
pair XYMIN = (XMIN,YMIN);
pair XYMAX = (XMAX,YMAX);

limits(XYMIN, XYMAX);
xaxis('$x$',Arrow);

draw((0,0) -- (0,YMAX), 2pt+lightblue);
draw(shift(0.05,0.5) * ((0,0) -- (0.7,0)), Arrow, align=(0,1),L = Label('$p_\mathrm{t}$', position=MidPoint));
draw(shift(-0.05,0.35) * ((0,0) -- (-0.7,0)), Arrow, align=(0,1), L=Label('$p_\mathrm{r}$', position= MidPoint));
draw(shift(-0.05,0.65) * ((0,0) -- (-0.7,0)), mediumred, BeginArrow, align=(0,1), L=Label('$p_\mathrm{i}$', position=MidPoint));

label('$\\rho_1c_1$',(-0.2,0.1));
label('$\\rho_2c_2$',(0.2,0.1));
