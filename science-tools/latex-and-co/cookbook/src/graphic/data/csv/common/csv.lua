function read_CSV(file, ignore_header)
  local data = {}

  for line in io.lines(file) do
    if ignore_header then
      ignore_header = false

    else
      local result = {}

      for part in string.gmatch(line, "([^,]+)") do
        table.insert(result, tonumber(part))
      end

      table.insert(data, result)
    end
  end

  return data
end
