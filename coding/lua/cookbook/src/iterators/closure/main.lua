------
-- prototype::
--     imax : la borne supérieure pour ''i''.
--     jmax : la borne supérieure pour ''j''.
--     kmax : la borne supérieure pour ''k''.
--
--
-- note::
--     Toutes les bornes \infs sont égales à `1`.
------
local function xyz_range(imax, jmax, kmax)
  local i, j, k = 0, 1, 1

------
-- Nous renvoyons une fonction, sans \arg, qui sera gérée
-- automatiquement par la boucle ''for''. Comme cette fonction
-- est renvoyée directement, nous l'avons choisie anonyme.
------
  return function ()
-- On commence par boucler sur les ''i''.
    i = i + 1

    if i <= imax then
      return i, j, k
    end

-- On passe au prochain ''j''.
    i = 1
    j = j + 1

    if j <= jmax then
      return i, j, k
    end

-- On passe au prochain ''k''.
    j = 1
    k = k + 1

    if k <= kmax then
      return i, j, k
    end

-- Plus rien à renvouyer: on utilise le renvoi \auto de ''nil''
-- fait par \lua.
  end
end

-- DEMO --

local last_z = 1

------
-- Comment fonctionne ''for ... in ... do ... end'' ? Notons
-- ''f = xyz_range(2, 3, 4)''. Cette fonction est appelée sans
-- \arg une \1ere fois par \lua qui récupère ''(1, 1, 1)'' qui
-- est affecté à ''(x, y, z)''. L'appel à ''f'' est effectué
-- jusqu'à obtenur la valuer spéciale ''nil'' qui indique de
-- sortir de la boucle ''for''.
------
for x, y, z in xyz_range(2, 3, 4) do
  if last_z ~= z then
    print("---")

    last_z = z
  end

  print(x, y, z)
end
