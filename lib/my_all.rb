require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    while i < collection.length
      return false if !yield(collection[i])
      i += 1
    end
    true
  end
end
