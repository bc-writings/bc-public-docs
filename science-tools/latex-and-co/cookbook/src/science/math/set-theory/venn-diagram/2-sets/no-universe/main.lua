---------------------------
-- Factorisation du code --
---------------------------
i = cpx.I

------
-- prototype::
--     c : la couleur d'un ¨ens qui sera hachuré.
--
--     :return: les commandes ¨tikz pour colorer la frontière et
--              les hachures du remplissage
------
function SET_COL(c)
  return "color = " .. c .. ", pattern color = " .. c
end
