-----
-- Combinaison.
-----

function Cnp(n, p)
    if (p == 0 or p == n) then
        return 1
    end

    return n * Cnp(n - 1, p - 1) / p
end

-----
-- Arrangement.
-----

function Anp(n, p)
    if p == 0 then
        return 1
    end

    return (n - p + 1) * Anp(n, p - 1)
end

-----
-- Impression d'une valeur flottante sans partie décimale.
-----

function writefloat2int(z)
    tex.sprint(string.format("%.0f", z))
end
