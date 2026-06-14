------
-- prototype::
--     file        : le chemin du fichier à analyser.
--                 @ type(have_header) = path
--     have_header : ''true'' demande d'ignorer la \1ere ligne,
--                   sinon \ttes les lignes sont lues.
--                 @ type(have_header) = bool
--
--     :return: un \tab de sous-\tabs représentant les données
--              extraites ligne par ligne.
------
function read_CSV(file, has_header)
------
-- note::
--     Nous laissons une trace du fichier analysé dans le fichier
--     \log géré par \latex.
--     Ceci permet, par exemple, à \latexmk de savoir qu'il doit
--     compiler de nouveau un \docu en cas de \chgts dans les
--     fichiers de données.
------
    texio.write_nl("(" .. file .. ")")

    local data = {}

    for line in io.lines(file) do
-- Ligne ignorée (uniquement la \1ere)
      if has_header then
        has_header = false

-- Ligne analysée.
      else
        local result = {}

------
-- Usage d'tegex_frs pour autoriser de futures améliorations
-- \techs. Pour le moment les \gpes capturés sont formés de
-- \caracs autres que la virgule.
------
        for part in string.gmatch(line, "([^,]+)") do
          table.insert(result, tonumber(part))
        end

        table.insert(data, result)
      end
    end

    return data
  end
