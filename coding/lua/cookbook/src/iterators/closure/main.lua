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
--
------
  return function ()
--
    i = i + 1

    if i <= imax then
      return i, j, k
    end

--
    i = 1
    j = j + 1

    if j <= jmax then
      return i, j, k
    end

--
    j = 1
    k = k + 1

    if k <= kmax then
      return i, j, k
    end
  end
end

-- DEMO --

local last_z = 1

for x, y, z in xyz_range(2, 3, 4) do
  if last_z ~= z then
    print("---")

    last_z = z
  end

  print(x, y, z)
end
