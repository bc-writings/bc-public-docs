settings.outformat = "pdf";

import patterns;

unitsize(1cm, 0);

add("hachure", hatch(3mm, NE, 1.5mm + royalblue));

fill(
    box((0, 0), (1, 1)),
    pattern("hachure")
);

shipout(bbox(2mm, white));
