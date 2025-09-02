------
-- prototype::
--    a     : un réel.
--    a_min : un minimum temporaire.
--    a_max : un maximum temporaire.
--
--    :return: voir le code, tout simplement...
------
function update_extreme_vals(a, a_min, a_max)
  return math.min(a, a_min), math.max(a, a_max)
end

------
-- prototype::
--    file : le chemin d'un fichier ext::''OBJ'' au format \wavefront
--           simplifié (non gestion des textures, ni des normales).
--
--    :return: ''{xmin, xmax, ymin, ymax, zmin, zmax}, polyhedron'' où
--             les valeurs extrêmales correspondent à celles obtenues
--             en analysant le fichier, et le polyèdre est une version
--             \luadraw du modèle 3D indiqué par le fichier.
------
function parse_wavefront(file)
  local polyhedron = {}
  local vertices   = {}
  local facets     = {}

  local xmin, xmax = math.huge, -math.huge
  local ymin, ymax = math.huge, -math.huge
  local zmin, zmax = math.huge, -math.huge

-- Dans les \regexs \lua, ''%'' est le caractère d'échappement.
  for line in io.lines(file) do
-- Nettoyage des espaces finaux et initiaux : en \lua, ''-''
-- est un caractère spécial pour une recherche non gourmande.
    line = line:match("^%s*(.-)%s*$")

-- On ignore les lignes vides et les commentaires.
    if line ~= "" and not line:match("^#") then
-- Cas d'un sommet.
      if line:match("^v%s") then
-- La \regex suivante est fragile, mais nous faisons confiance
-- aux fichiers ext::''obj'' utilisés.
        local x, y, z = line:match(
          "^v%s+([%-%d%.]+)%s+([%-%d%.]+)%s+([%-%d%.]+)"
        )

        if x and y and z then
          x, y, z = tonumber(x), tonumber(y), tonumber(z)

-- Gestion des valeurs extrèmales.
          xmin, xmax = update_extreme_vals(x, xmin, xmax)
          ymin, ymax = update_extreme_vals(y, ymin, ymax)
          zmin, zmax = update_extreme_vals(z, zmin, zmax)

-- Un nouveau sommet.
          table.insert(vertices, M(x, y, z))
        end

-- Cas d'une face.
      elseif line:match("^f%s") then
        local face = {}

        for idx in line:gmatch("(%d+)") do
          table.insert(face, tonumber(idx))
        end

        if #face > 0 then
          table.insert(facets, face)
        end
      end
    end
  end

  polyhedron.vertices = vertices
  polyhedron.facets   = facets

  return {xmin, xmax, ymin, ymax, zmin, zmax}, polyhedron
end
