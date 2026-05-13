local ld = luadraw

------
-- prototype::
--     polyhedron   : un polyèdre.
--     graphview    : la zone graphique.
--     user_palette : une suite ordonnée de couleurs.
--
--     :action: dessin du polyèdre fourni en colorant ses facettes
--              suivant leur "inclinaison".
------
function ld.graph3d:draw_colormap_normal_angle(
  polyhedron,
  graphview,
  user_palette
)
  local sorted_facets = self:Sortpolyfacet(polyhedron)

  local A, B, C
  local N, angle, level, color

  local amin, amax = math.huge, -math.huge

  for _ , f in ipairs(sorted_facets) do
    A, B, C = table.unpack(f)
    N       = ld.pt3d.normalize(ld.pt3d.prod(B - A, C - A))
    angle   = ld.pt3d.angle3d(N, ld.pt3d.vecK)

    if angle > amax then
      amax = angle
    end

    if angle < amin then
      amin = angle
    end
  end

  for _ , f in ipairs(sorted_facets) do
    A, B, C = table.unpack(f)
    N       = ld.pt3d.normalize(ld.pt3d.prod(B - A, C - A))

    level = (amax - ld.pt3d.angle3d(N, ld.pt3d.vecK)) / (amax - amin)

    self:Dpolyline3d(
      f,
      true,
         "draw = none, fill = "
      .. ld.getpalette(user_palette, level)
    )
  end
end
