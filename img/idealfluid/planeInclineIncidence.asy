settings.outformat = "pdf";
size(8cm,0);
defaultpen(fontsize(16pt));

import geometry;
import graph;

real XMIN = -1, XMAX = 1, YMIN = -1, YMAX = 1;
pair XYMIN = (XMIN,YMIN);
pair XYMAX = (XMAX,YMAX);

limits(XYMIN, XYMAX);
xaxis('$x$',Arrow);

draw((0,YMIN) -- (0,YMAX), 2pt+lightblue);

real LEN = 1;
draw((-LEN/sqrt(2),-LEN/sqrt(2)) -- (0,0), mediumred, Arrow, L=Label('$p_\mathrm{i}$', position=MidPoint));
draw((0,0) -- (-LEN/sqrt(2),LEN/sqrt(2)), Arrow, L=Label('$p_\mathrm{r}$', position=MidPoint));
draw((0,0) -- (LEN*sqrt(3)/2,LEN/2), Arrow, align=N, L=Label('$p_\mathrm{t}$', position=MidPoint));

draw(arc((0,0),0.3,180,225), L=Label('$\\theta_\mathrm{i}$',position=MidPoint));
draw(arc((0,0),0.3,180,135), align=W, L=Label('$\\theta_\mathrm{r}$',position=MidPoint));
draw(arc((0,0),0.3,0,30), L=Label('$\\theta_\mathrm{t}$',position=MidPoint));

label('$\\rho_1c_1$',(-0.2,0.8));
label('$\\rho_2c_2$',(0.2,0.8));
