#! /usr/bin/env python
#coding=utf-8

# Source : http://www.developpez.net/forums/d1125893/autres-langages/python-zope/general-python/produire-serie-dimages-test/#post6212134

import Image, ImageDraw

SIZE = (150, 300)
POSITION = (10, 10)
for i in range(1,101):
    print i
    im = Image.new('RGB', SIZE)
    draw = ImageDraw.Draw(im)
    draw.text(POSITION, str(i))
    im.save('picture/%i.jpg' % i)