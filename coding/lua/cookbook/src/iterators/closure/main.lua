------
-- prototype::
--     imax :
--     jmax :
--     kmax :
------
function iter3D(imax, jmax, kmax)
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

for x, y, z in iter3D(2, 3, 4) do
    print(x, y, z)
end
