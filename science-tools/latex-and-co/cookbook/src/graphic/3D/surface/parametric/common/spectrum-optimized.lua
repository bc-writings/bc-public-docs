------
-- protottype::
--     facets :
--
--     :return:
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
-- protottype::
--     surface  :
--     spectrum :
--     dir      :
--
--     :action:
------
function graph3d:draw_spectrum(surface, spectrum, dir)
  local bary_bbox = get_bary_bbox(surface)

  local sorted_facets = self:Sortfacet(surface)

  local imin, imax

  if dir == "x" then
    imin, imax = 1, 2

  elseif dir == "y" then
    imin, imax = 3, 4

  elseif dir == "z" then
    imin, imax = 5, 6
  end

  local val_min   = bary_bbox[imin]
  local delta_val = bary_bbox[imax] - val_min

  local G, val, level

  for _ , f in ipairs(sorted_facets) do
    G = isobar3d(f)

    if dir == "x" then
      val = G.x

    elseif dir == "y" then
      val = G.y

    else
      val = G.z
    end

    level = math.abs((val - val_min) / delta_val)

    self:Dpolyline3d(f, true, "fill=" .. palette(spectrum, level))
  end
end

function graph3d:draw_Xspectrum(surface, spectrum)
  self:draw_spectrum(surface, spectrum, "x")
end

function graph3d:draw_Yspectrum(surface, spectrum)
  self:draw_spectrum(surface, spectrum, "y")
end

function graph3d:draw_Zspectrum(surface, spectrum)
  self:draw_spectrum(surface, spectrum, "z")
end
