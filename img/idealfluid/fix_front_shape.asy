settings.outformat = "pdf";
size(6cm);
defaultpen(fontsize(10pt));

import graph;
import geometry;

real PI = 3.14;
real theta = PI/6;
real r = 1, dr = 0.3;

draw((0,0) -- (r,0), dashed, L=Label('$r$',position=MidPoint));
draw((0,0) -- (r*cos(theta),r*sin(theta)),dashed);
draw(arc((0,0),r,angle1=0,angle2=theta/PI*180), red);
draw(arc((0,0),r+dr,angle1=0,angle2=theta/PI*180), red);
draw((r,0) -- (r+dr,0), L=Label('$\mathrm{d}r $',position=MidPoint));
draw((r*cos(theta),r*sin(theta)) -- ((r+dr)*cos(theta),(r+dr)*sin(theta)));


/* arrow((r*cos(theta/2),r*sin(theta/2)), (-cos(theta/2),-sin(theta/2)), arrow=ArcArrow(SimpleHead)); */
arrow((r*cos(theta/2),r*sin(theta/2)), (-cos(theta/2),-sin(theta/2)), arrow=ArcArrow(SimpleHead), L=Label('$(\\rho vS)_r$',position=MidPoint,align=N));
arrow(((r+dr)*cos(theta/2),(r+dr)*sin(theta/2)), (cos(theta/2),sin(theta/2)), arrow=ArcArrow(SimpleHead), L=Label('$(\\rho vS)_{r+\mathrm{d}r}$',position=MidPoint,align=N));

