require 'pry'

def my_all?(collection)
  index = 0
  array = []
  while index < collection.length
    array << yield(collection[index])
    index += 1
  end
  if array.include?(false)
    false
  else
    true
  end
end
