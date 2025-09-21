------
-- prototype::
--     file        : le chemin du fichier à analyser.
--     have_header : réglé à ''true'', ce ¨param demande d'ignorer
--                   la ¨1ere ligne, sinon ¨ttes les lignes sont
--                   lues.
--
--     :return: un tableau de sous-tableaux représentant les
--              données extraites ligne par ligne.
------
function read_CSV(file, has_header)
-- Laissons une trace du fichier analysé dans le fichier \log. Ceci
-- permet, par exemple, à \latexmk de savoir qu'il doit compiler de
-- nouveau un document en cas de changements dans les fichiers de
-- données utilisés.
    texio.write_nl("(" .. file .. ")")

    local data = {}

    for line in io.lines(file) do
      if has_header then
        has_header = false

      else
        local result = {}

  ------
  -- Usage d'expressions rationnelles pour autoriser de futures
  -- améliorations techniques. Pour le moment les groupes capturés
  -- sont formés de caractères autres que la virgule.
  ------
        for part in string.gmatch(line, "([^,]+)") do
          table.insert(result, tonumber(part))
        end

        table.insert(data, result)
      end
    end

    return data
  end
