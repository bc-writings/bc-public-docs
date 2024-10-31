settings.outformat="png";
settings.render=8;

import solids;

currentprojection = orthographic(5, 4, 2);
size(6cm);

triple pO = (0, 0, 0);

draw(cylinder(pO, 1, 2), blue);

dot(pO);
dot((0, 0, 2));
draw(pO -- (0, 0, 2), lightblue+dashed);

shipout(bbox(2mm, invisible));
