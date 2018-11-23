require 'pry'

def my_all?(collection)
  if collection.length == 0
    return false
  else
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i += 1
    end
    !block_return_values.include?(false)
  end
end
