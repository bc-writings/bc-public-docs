-----
-- Reste d'une division euclidienne (pas à pas).
-----
function mod(a, b)
  local r = a

  while not (r < b) do
    r = r - b
  end

  return r
end

-----
-- Calcul du modulo indiqué via ''a % b'' côté \latex.
-----
function calc(expr)
  vars = string.split(expr, "%")

  m = mod(
    tonumber(vars[1]),
    tonumber(vars[2])
  )

-----
-- Il faut \tex-imprimer le résultat, et non le renvoyer, à cause
-- de la récupération verbatim de l'\arg.
-----
  tex.print(m)
end
