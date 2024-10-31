settings.outformat="png";
settings.render=8;
settings.prc = false;

import solids;
unitsize(0.5cm);
currentprojection=orthographic(10,5,2);
real a=4;


//bicone
path3 p3=(0,0,1)--(1,0,0)--(0,0,-1);
revolution bicone=revolution(O,p3,Z,0,360);
picture pic5;
size(pic5,2cm);
draw(pic5,bicone.silhouette(m=199));
draw(pic5,bicone,1,longitudinalpen=nullpen);
add(pic5.fit(),(4*a+1,0));
