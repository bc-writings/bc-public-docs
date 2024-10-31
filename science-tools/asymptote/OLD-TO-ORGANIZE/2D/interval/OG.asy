////////////////////////////////////////////////////////////////////
/// Des contributions d'OG que je remercie.
////////////////////////////////////////////////////////////////////

void bracket(
    picture pic,
    pair a,
    pair d,
    real s,
    pen p = currentpen
) {
    picture opic;
    pair    ortd = s*(-d.y, d.x);

    Draw(
        opic,
        (ortd-.5d) -- (-0.5d) -- 0.5d -- (.5d+ortd),
        p + solid
    );
    add(pic, opic, a);
}

arrowbar BeginBra(
    real size   = 0,
    real ratiob = .3
) {
    return new bool(
        picture pic,
        path g,
        pen p,
        margin margin
    ) {
        real size = size == 0 ? barsize(p) : size;

        bracket(
            pic,
            point(g, 0),
            size * dir(g,0) * I,
            ratiob,
            p
        );

        return true;
    };
}

arrowbar Bra(
    real size   = 0,
    real ratiob = .3
) {
    return new bool(
        picture pic,
        path g,
        pen p,
        margin margin
    ) {
        int  L    = length(g);
        real size = size == 0 ? barsize(p) : size;

        bracket(
            pic,
            point(g, L),
            size * dir(g, L) * I,
            -ratiob,
            p
        );

        return true;
    };
}


arrowbar EndBra(real size = 0, real ratiob = .3) = Bra;

arrowbar Bras(real size = 0,real ratiob = .3) {
    return new bool(
        picture pic,
        path g,
        pen p,
        margin margin
    ) {
        real size=size == 0 ? barsize(p) : size;

        BeginBra(size, ratiob)(pic, g, p, margin);
        EndBra  (size, ratiob)(pic, g, p, margin);

        return true;
    };
}

arrowbar BeginBra = BeginBra(),
         Bra      = Bra(),
         EndBra   = Bra(),
         Bras     = Bras();
