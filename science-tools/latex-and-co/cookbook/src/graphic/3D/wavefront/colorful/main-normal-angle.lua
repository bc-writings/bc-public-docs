------
-- prototype::
--     polyhedron : un polyèdre.
--     graphview  : la zone graphique.
--     spectrum   : une suite ordonnée de couleurs.
--
--     :action: dessin du polyèdre fourni en colorant ses facettes
--              suivant leur "inclinaison".
------
function draw_normal_angle(
  polyhedron,
  graphview,
  spectrum
)
  local sorted_facets = graphview:Sortpolyfacet(polyhedron)

  local A, B, C
  local N, angle, level, color

  local amin, amax = math.huge, -math.huge

  for _ , f in ipairs(sorted_facets) do
    A,B,C = table.unpack(f)
    N = pt3d.normalize(pt3d.prod(B - A, C - A))

    angle = angle3d(N, vecK)

    if angle > amax then
      amax = angle
    end

    if angle < amin then
      amin = angle
    end
  end

  for _ , f in ipairs(sorted_facets) do
    A,B,C = table.unpack(f)
    N = pt3d.normalize(pt3d.prod(B - A, C - A))

    level = (amax - angle3d(N, vecK)) / (amax - amin)

    graphview:Dpolyline3d(f, true, "fill=" .. palette(spectrum, level))
  end
end
