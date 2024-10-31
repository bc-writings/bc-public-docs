//  Source: https://asy.marris.fr/asymptote/Fleches_cotation/index.html

settings.outformat="pdf";

import OG; // pour profiter de "Bras" :
           // extrémités de segment en forme de crochets.

unitsize(1cm, 0);

draw((0,1) -- (5,0)     , Bra);
draw((0,.5) -- (5,-.5)  , BeginBra);
draw((0,0) -- (5,-1)    , EndBra);
draw((0,-.5) -- (5,-1.5), Bras);

shipout(bbox(5mm, white));
