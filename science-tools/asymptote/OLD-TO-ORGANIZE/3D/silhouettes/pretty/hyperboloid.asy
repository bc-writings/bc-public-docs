size(5cm);

settings.outformat="png";
settings.render = 0;
settings.prc = false;

import graph3;
import solids;

currentprojection=obliqueZ;

triple paraXY(real t){return (t,t^2,0);}
path3 g=graph(paraXY,0,2);

revolution hyperboloid=revolution(O,g,Y);
draw(hyperboloid.silhouette());
