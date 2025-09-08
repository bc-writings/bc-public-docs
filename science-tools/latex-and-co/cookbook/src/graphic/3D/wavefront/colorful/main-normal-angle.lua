------
-- prototype::
--     polyhedron   : un polyèdre.
--     graphview    : la zone graphique.
--     bounding_box : la zone de tracé utile.
--     spectrum     : une suite ordonnée de couleurs.
--
--     :action: dessin du polyèdre fourni en colorant ses facettes
--              suivant leur "inclinaison".
------
function draw_normal_angle(
  polyhedron,
  graphview,
  bounding_box,
  spectrum
)
  local sorted_facets = graphview:Sortpolyfacet(polyhedron)

  local A, B, C
  local N, angle, color

  for _ , f in ipairs(sorted_facets) do
    A,B,C = table.unpack(f)
    N = pt3d.normalize(pt3d.prod(B - A, C - A))

    level = (angle3d(N, vecK) * rad + 180) / 360

    graphview:Dpolyline3d(f, true, "fill=" .. palette(spectrum, level))
  end
end
