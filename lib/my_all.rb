require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false)
    false # Not all where true (there is one false included)
  else
    true  # All where true (there were no falses included)
  end
end
