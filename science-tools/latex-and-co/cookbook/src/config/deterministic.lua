------
-- This script enforces deterministic iteration over associative
-- tables.
--
--
-- warning::
--    This script should never be used lightly. It became necessary
--    in order to produce deterministic PDFs following any minor
--    update to luadraw.
--
--
-- ref::
--    + https://github.com/pfradin/luadraw/discussions/369#discussioncomment-19682206
------

-- Fixed seed for deterministic pseudo-randomness.
math.randomseed(12345)

-- Let's save a reference to the original pairs() function before
-- overriding it.
local raw_pairs = pairs

-- Deterministic version of pairs().
function pairs(t)
  local keys = {}
  local i    = 0

  for k in raw_pairs(t) do
    i = i + 1
    keys[i] = k
  end

  table.sort(
    keys,
    function(a, b)
      local ta = type(a)
      local tb = type(b)

      if ta ~= tb then
        return ta < tb

      elseif ta == "number" or ta == "string" then
        return a < b

      else
        return tostring(a) < tostring(b)
      end
    end
  )

  i = 0

  return function()
    i = i + 1

    local k = keys[i]

    if k ~= nil then
      return k, t[k]
    end
  end
end
