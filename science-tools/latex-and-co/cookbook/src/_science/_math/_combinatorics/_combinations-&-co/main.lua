-----
-- \Nbre de combinaisons de p parmi n.
-----
function Cpn(p, n)
  if (p == 0 or p == n) then
    return 1
  end

  return n * Cpn(p - 1, n - 1) / p
end

-----
-- \Nbre d'arrangements de p parmi n.
-----
function Apn(p, n)
  if p == 0 then
    return 1
  end

  return (n - p + 1) * Apn(p - 1, n)
end

-----
-- Impression d'une valeur flottante sans partie décimale.
-----
function writefloat2int(x)
  tex.sprint(string.format("%.0f", x))
end
