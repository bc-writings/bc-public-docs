function trigtable ()
    for t=0, 45, 3 do
        x=math.rad(t)
        tex.print(
            string.format(
                [[%2d$^{\circ}$ & %1.9f & %1.9f & %1.9f & %1.9f \\]],
                t, x,
                math.sin(x), math.cos(x), math.tan(x)
            )
        )
    end
end
