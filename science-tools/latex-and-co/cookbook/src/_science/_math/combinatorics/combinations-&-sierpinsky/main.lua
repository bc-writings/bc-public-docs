-----
-- Mémorisation des calculs déjà effectués via un \tab
-- associatif dont les clés seront des naturels `n`, et
-- les valeurs des \tabs associatifs pour associer ensuite
--  la valeur "`p` parmi `n`" à la sous-clé `p`.
-----
MEMO_CNP = {}

-----
-- prototype::
--     #1 : un naturel `n`.
--     #2 : un naturel `p`.
--
--     :return: le nombre de combinaisons de `p` parmi `n`
--              modulo `2`.
-----
function binaryCnp(p, n)
  if (p == 0 or p == n) then
    return 1
  end

-- Si ''n'' n'est pas une clé du tableau ''MEMO_CNP'', alors
-- ''MEMO_CNP[n]'' vaut ''nil''. Ceci permet de comprendre
-- que le test repère le cas où "`p` parmi `n`" a été mémorisé.
  if MEMO_CNP[n] ~= nil and MEMO_CNP[n][p] ~= nil then
    return MEMO_CNP[n][p]
  end

  a = binaryCnp(p  , n - 1)
  b = binaryCnp(p - 1, n - 1)

  if a == b then
    val = 0  -- Cas "pair".
  else
    val = 1  -- Cas "impair".
  end

-- Première usage de ''n''.
  if MEMO_CNP[n] == nil then
    MEMO_CNP[n] = {}
  end

  MEMO_CNP[n][p] = val

  return val
end
