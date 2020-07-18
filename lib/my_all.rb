require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    while i < collection.length do
      if !yield(collection[i])
        return false
      else i += 1
      end
    end
    true
  else puts "No block given"
  end
end
