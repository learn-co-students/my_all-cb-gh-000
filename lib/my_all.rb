require 'pry'

def my_all?(collection)
  block = []
  length = 0
  size = collection.size
  while length < size
    block << yield(collection[length])
    length += 1
  end

  block.include?(false) ? false : true
end
