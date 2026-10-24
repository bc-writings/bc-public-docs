-----
-- prototype::
--     #1 : un naturel `n`.
--     #2 : un naturel `p`.
--
--     :return: le nombre de combinaisons de `p` parmi `n`
--              modulo `2`.
-----
function Cpn(p, n)
  if (p == 0 or p == n) then
    return 1
  end

  return n * Cpn(p - 1, n - 1) / p
end

-----
-- prototype::
--     #1 : un naturel `n`.
--     #2 : un naturel `p`.
--
--     :return: le nombre d'arrangements de `p` parmi `n`
--              modulo `2`.
-----
function Apn(p, n)
  if p == 0 then
    return 1
  end

  return (n - p + 1) * Apn(p - 1, n)
end


-----
-- prototype::
--     #1 : un flottant `x`.
--
--     :action: impression de la partie entière de `x`.
-----
function writefloat2int(x)
  tex.sprint(string.format("%.0f", x))
end
