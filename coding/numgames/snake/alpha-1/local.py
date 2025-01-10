from matplotlib.pyplot import *
from turtle import *
from random import *
from time import *

def a(x=155,y=106,w=10,v=10,x2=0,y2=0,nb_de_carres_bleus=0,door=0):
  #x et y sont pour les coordonnees et les deux autres sont pour la taille
  #attention si x=320 ou y=222 les carres seront dessine a droite donc sortiront du cadre.Pour regler ca il faut soustraire la taille du cube aux axes w pour x et v pour y
  fill_rect(0,0,320,222,'red')
  fill_rect(5,6,310,210,'white')
  draw_string("ramasse tout les carres bleus",5,6)
  draw_string("et place les dans",5,26)
  draw_string("le depot pour gagner",5,46)
  sleep(5)
  fill_rect(5,6,310,210,'blue')
  fill_rect(5,6,100,40,'brown')
  fill_rect(5,6,100,20,'white')
  draw_string("depot",5,6)
  fill_rect(x,y,w,v,'gray')


  while not keydown(KEY_TOOLBOX) and  not keydown(KEY_ANS) is True:
    #pour l obtention des touches pressees
    if keydown(KEY_DOWN) is True and not y==206:
      y2=y2+10
    if keydown(KEY_UP) is True and not y==6:
      y2=y2-10
    if keydown(KEY_LEFT) is True and not x==5:
      x2=x2-10
    if keydown(KEY_RIGHT)is True and not x==305:#c est 305 car -10 avec le cube et -5 avec la bordure
      x2=x2+10

    #pour gerer le deplacement du carre, du carre avec la bordure et aussi le depot
    #et aussi pour compter le nombre de carre bleus ramasses
    if x2-10==0 or x2+10==0:
      if get_pixel(x+x2,y)==color(0,0,255):
        nb_de_carres_bleus=nb_de_carres_bleus+1
      fill_rect(x,y,w,v,'white')
      fill_rect(5,6,100,40,'brown')
      draw_string("depot:"+ str(nb_de_carres_bleus),5,6)
      fill_rect(x+x2,y,w,v,'gray')
      x=x+x2
      x2=0
      sleep(0.1)
    if y2-10==0 or y2+10==0:
      if get_pixel(x,y+y2)==color(0,0,255):
        nb_de_carres_bleus=nb_de_carres_bleus+1
      fill_rect(x,y,w,v,'white')
      fill_rect(5,6,100,40,'brown')
      draw_string("depot:"+str(nb_de_carres_bleus),5,6)
      fill_rect(x,y+y2,w,v,'gray')
      y=y+y2
      y2=0
      sleep(0.1)

    if keydown(KEY_ALPHA) is True:
      nb_de_carres_bleus=610
    if nb_de_carres_bleus==610 and door==0: #and keydown(KEY_ALPHA) is True:
      for i in range(25):
        sleep(float(0.1))
        fill_rect(315,85,5,50,'white')
        fill_rect(315,85-door,5,25,'red')
        fill_rect(315,111+door,5,25,'red')
        door=door+1

a()
