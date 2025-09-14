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
  return coroutine.wrap(
    function()
      for k = 1, kmax do
        for j = 1, jmax do
          for i = 1, imax do
            coroutine.yield(i, j, k)
          end
        end
      end
    end
  )
end

-- DEMO --

for x, y, z in xyz_range(2, 3, 4) do
  print(x, y, z)
end
