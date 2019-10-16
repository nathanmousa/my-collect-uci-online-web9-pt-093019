def my_collect(array)
  i = 0
  new_array = []
  
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end