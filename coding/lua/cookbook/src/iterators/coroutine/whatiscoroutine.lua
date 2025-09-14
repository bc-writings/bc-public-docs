co = coroutine.create(function()
  for i = 1, 3 do
    print("dans coroutine", i)
    coroutine.yield()
  end
end)

coroutine.resume(co)
print("XXXX")
coroutine.resume(co)
