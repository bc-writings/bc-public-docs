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
