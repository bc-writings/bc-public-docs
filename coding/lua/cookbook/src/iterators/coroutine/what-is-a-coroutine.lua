-- Définition d'une coroutine.

local one_coroutine = coroutine.create(
  function ()
    for i = 1, 3 do
      print("Texte no." .. i .. " de la coroutine.")

      coroutine.yield()
    end
  end
)

-- Utilsation de la coroutine.

print("-- Etape 1 --")
coroutine.resume(one_coroutine)
print("-- Etape 2 --")
coroutine.resume(one_coroutine)
print("-- Etape 3 --")
coroutine.resume(one_coroutine)
print("-- Etape 4 --")
coroutine.resume(one_coroutine)
print("-- Etape 5 --")
coroutine.resume(one_coroutine)
