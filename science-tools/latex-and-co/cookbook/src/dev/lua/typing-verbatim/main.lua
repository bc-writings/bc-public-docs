function verbtest()
  local test = {
    "1",
    "%%",
    "\\three",
    "++++"
  }

  tex.print("\\begin{verbatim}")

  for i, x in ipairs(test) do
    tex.print("[" .. i .. "] " .. x)
  end

  tex.print("\\end{verbatim}")
end
