------
-- prototype::
--     facets : une liste de facettes.
--
--     :return: le ¨tab ''{xmin, xmax, ymin, ymax, zmin, zmax}''
--              des ¨coord minimales et maximales des ¨barys de
--              toutes les facettes.
------
function get_bary_bbox(facets)
  local update_extreme_vals = function (a, a_min, a_max)
    return math.min(a, a_min), math.max(a, a_max)
  end

  local G, level

  local xmin, xmax = math.huge, -math.huge
  local ymin, ymax = math.huge, -math.huge
  local zmin, zmax = math.huge, -math.huge

  for _ , f in ipairs(facets) do
    G = isobar3d(f)

    xmin, xmax = update_extreme_vals(G.x, xmin, xmax)
    ymin, ymax = update_extreme_vals(G.y, ymin, ymax)
    zmin, zmax = update_extreme_vals(G.z, zmin, zmax)
  end

  return {xmin, xmax, ymin, ymax, zmin, zmax}
end

------
-- prototype::
--     user_surface : une ¨surf obtenue via la ¨meth ''surface''.
--     user_palette : une liste de couleurs utilisée pour calculer
--                    les couleurs des facettes par interpolation
--                    linéaire.
--     dir          : la ¨coord des ¨barys retenue pour calculer
--                    les couleurs des facettes.
--                  @ dir in ["x", "y", "z"]
--
--     :action: tracé de la ¨surf en colorant ses facettes suivant
--              la valeur de la ¨coord choisie des barycentres.
------
function graph3d:draw_colormap(user_surface, user_palette, dir)
  local bary_bbox = get_bary_bbox(user_surface)

  local sorted_facets = self:Sortfacet(user_surface)

  local imin, imax, Gval

  if dir == "x" then
    Gval       = function (G) return G.x end
    imin, imax = 1, 2

  elseif dir == "y" then
    Gval       = function (G) return G.y end
    imin, imax = 3, 4

  elseif dir == "z" then
    Gval       = function (G) return G.z end
    imin, imax = 5, 6

  else
    error("draw_colormap: unknown ''dir'' value ''".. dir .."''.")
  end

  local val_min   = bary_bbox[imin]
  local delta_val = bary_bbox[imax] - val_min

  local val, level

  for _ , f in ipairs(sorted_facets) do
    val   = Gval(isobar3d(f))
    level = (val - val_min) / delta_val

    self:Dpolyline3d(
      f,
      true,
      "fill=" .. palette(user_palette, level)
    )
  end
end

------
-- prototype::
--     :see: graph3d:draw_colormap
--
--     :action: appel de ''graph3d:draw_colormap'' en passant
--              les ¨args ''user_surface'' et ''user_palette'',
--              et en choisissant la ¨dir ''"x"''.
------
function graph3d:draw_colormap_X(user_surface, user_palette)
  self:draw_colormap(user_surface, user_palette, "x")
end

------
-- prototype::
--     :see: graph3d:draw_colormap ,
--           graph3d:draw_colormap_X
--
--     :action: on choisit ici la ¨dir ''"y"''.
------
function graph3d:draw_colormap_Y(user_surface, user_palette)
  self:draw_colormap(user_surface, user_palette, "y")
end

------
-- prototype::
--     :see: graph3d:draw_colormap ,
--           graph3d:draw_colormap_X
--
--     :action: on choisit ici la ¨dir ''"z"''.
------
function graph3d:draw_colormap_Z(user_surface, user_palette)
  self:draw_colormap(user_surface, user_palette, "z")
end
