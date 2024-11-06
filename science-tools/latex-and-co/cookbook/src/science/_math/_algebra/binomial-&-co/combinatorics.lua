function cnp(n, p)
    if (p == 0 or p == n) then
        return 1
    end

    return n*cnp(n - 1, p - 1)/p
end

function anp(n, p)
    if p == 0 then
        return 1
    end

    return (n - p + 1)*anp(n, p - 1)
end

function fwrite(z)
    tex.sprint(string.format("%.0f", z))
end
