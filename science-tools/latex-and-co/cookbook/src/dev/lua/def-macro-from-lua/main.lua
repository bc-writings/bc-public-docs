-----
-- Division eucidienne (à petits pas).
-----
function divmod(a, b)
  local q = 0
  local r = a

  while not (r < b) do
    q = q + 1
    r = r - b
  end

  return q, r
end

-----
-- Définitions de macros via \lualatex.
-----
function divmod2tex(a, b)
  q, r = divmod(a, b)

  token.set_macro("luaQuot", q)
  token.set_macro("luaRem" , r)
end
