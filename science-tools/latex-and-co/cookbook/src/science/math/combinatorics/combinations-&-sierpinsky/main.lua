-----
-- Mémorisation des calculs déjà effectués via un \tab associatif
-- dont les clés seront des naturels `n`, et les valeurs des \tabs
-- associatifs pour associer ensuite la valeur "`p` parmi `n`" à
-- la sous-clé `p`.
-----
MEMO_BIN_CNP = {}

-----
-- Combinaison modulo 2.
-----
function binCnp(n, p)
    if (p == 0 or p == n) then
        return 1
    end

-- Si ''n'' n'est pas une clé du tableau ''MEMO_BIN_CNP'', alors
-- ''MEMO_BIN_CNP[n]'' vaut ''nil''. Ceci permet de comprendre que
-- le test repère le cas où "`p` parmi `n`" a été mémorisé.
    if MEMO_BIN_CNP[n] ~= nil and MEMO_BIN_CNP[n][p] ~= nil then
        return MEMO_BIN_CNP[n][p]
    end

    a = binCnp(n - 1, p)
    b = binCnp(n - 1, p - 1)

    if a == b then
        val = 0
    else
        val = 1
    end

    if MEMO_BIN_CNP[n] == nil then
        MEMO_BIN_CNP[n] = {}
    end

    MEMO_BIN_CNP[n][p] = val

    return val
end
