------
-- prototype::
--     imax :
--     jmax :
--     kmax :
------
function iter3D(imax, jmax, kmax)
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

for x, y, z in iter3D(2, 3, 4) do
  print(x, y, z)
end
