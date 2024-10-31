size(5cm);

settings.outformat = "html";

import three;

void draw_cube(real x, real y, real z)
{
    draw(shift(x,y,z)*unitbox);
    draw(shift(x,y,z)*unitcube,palegray);
}

draw_cube(0,0,0);
draw_cube(1,0,0);
draw_cube(2,0,0);
draw_cube(3,0,0);
draw_cube(4,0,0);
draw_cube(5,0,0);
draw_cube(5,0,1);
draw_cube(6,0,0);
draw_cube(6,0,1);
draw_cube(6,0,2);
draw_cube(0,1,0);
draw_cube(1,1,0);
draw_cube(2,1,0);
draw_cube(3,1,0);
draw_cube(4,1,0);
draw_cube(5,1,0);
draw_cube(5,1,1);
draw_cube(5,1,2);
draw_cube(6,1,0);
draw_cube(6,1,1);
draw_cube(6,1,2);
draw_cube(0,2,0);
draw_cube(0,2,1);
draw_cube(0,2,2);
draw_cube(1,2,0);
draw_cube(1,2,1);
draw_cube(1,2,2);
draw_cube(1,2,3);
draw_cube(2,2,0);
draw_cube(2,2,1);
draw_cube(2,2,2);
draw_cube(3,2,0);
draw_cube(4,2,0);
draw_cube(4,2,1);
draw_cube(4,2,2);
draw_cube(4,2,3);
draw_cube(5,2,0);
draw_cube(5,2,1);
draw_cube(5,2,2);
draw_cube(6,2,0);
draw_cube(6,2,1);
draw_cube(6,2,2);
