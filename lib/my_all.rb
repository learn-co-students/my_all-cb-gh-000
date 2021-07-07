# require 'pry'
collection = []

def my_all?(collection)
  i = 0
  return_values = []

  while i < collection.length
    return_values.push(yield collection[i])
    i += 1
  end
  return_values.all?
end
