settings.outformat = "pdf";
size(12cm,0);
defaultpen(fontsize(12pt));

import geometry;
import graph;

real XMIN = -1, XMAX = 1, YMIN = -0.1, YMAX = 1;
pair XYMIN = (XMIN,YMIN);
pair XYMAX = (XMAX,YMAX);

limits(XYMIN, XYMAX);
xaxis('$x$',Arrow);

draw((-XMIN/3,0) -- (-XMIN/3,YMAX), 2pt+lightblue);
draw((XMIN/3,0) -- (XMIN/3,YMAX), 2pt+lightblue);

// background color in the region II
fill(box((-XMIN/3-0.01,0), (XMIN/3+0.01,YMAX)), lightgreen);


// x axis
label('$0$', (XMIN/3,-0.05));
label('$D$', (XMAX/3,-0.05));

// region I
label('I: $\\rho_1c_1$',(-2/3,0.925));
draw((XMIN*0.9,0.55) -- (-1/3-0.05,0.55), Arrow);
draw((-1/3-0.05,0.45) -- (XMIN*0.9,0.45), Arrow);
label('$p_\mathrm{i} = p_\mathrm{ia} \mathrm{e}^{\mathrm{j} (\omega t - 
k_1 x)}$', (-2/3,0.775));
label('$v_\mathrm{i} = v_\mathrm{ia} \mathrm{e}^{\mathrm{j} (\omega t - 
k_1 x)}$', (-2/3,0.625));
label('$p_\mathrm{r} = p_\mathrm{ra} \mathrm{e}^{\mathrm{j} (\omega t + 
k_1 x)}$', (-2/3,0.375));
label('$v_\mathrm{r} = v_\mathrm{ra} \mathrm{e}^{\mathrm{j} (\omega t + 
k_1 x)}$', (-2/3,0.225));
label('$(p_\mathrm{ra} = p_\mathrm{ia} r_p)$', (-2/3,0.075));

// region II
label('II: $\\rho_2c_2$',(0,0.925));
draw((-1/3+0.05,0.55) -- (1/3-0.05,0.55), Arrow);
draw((1/3-0.05,0.45) -- (-1/3+0.05,0.45), Arrow);
label('$p_\mathrm{2t} = p_\mathrm{2ta} \mathrm{e}^{\mathrm{j} (\omega t - 
k_2 x)}$', (0,0.775));
label('$v_\mathrm{2t} = v_\mathrm{2ta} \mathrm{e}^{\mathrm{j} (\omega t - 
k_2 x)}$', (0,0.625));
label('$p_\mathrm{2r} = p_\mathrm{2ra} \mathrm{e}^{\mathrm{j} (\omega t + 
k_2 x)}$', (0,0.375));
label('$v_\mathrm{2r} = v_\mathrm{2ra} \mathrm{e}^{\mathrm{j} (\omega t + 
k_2 x)}$', (0,0.225));

// region III
label('III: $\\rho_1c_1$',(2/3,0.925));
draw((1/3+0.05,0.55) -- (0.9,0.55), Arrow);
label('$p_\mathrm{ta} = p_\mathrm{ta} \mathrm{e}^{\mathrm{j} [\omega t - 
k_1 (x-D)]}$', (2/3,0.775));
label('$v_\mathrm{ta} = v_\mathrm{ta} \mathrm{e}^{\mathrm{j} [\omega t - 
k_1 (x-D)]}$', (2/3,0.625));
label('$(p_\mathrm{ta} = p_\mathrm{ia} t_p)$', (2/3,0.475));
