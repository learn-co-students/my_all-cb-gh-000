require 'pry'

def my_all?(collection)
  if block_given?
    i=0
    while i<collection.size
      return false if yield(collection[i])==!true
      i+=1
    end
  end
  return true
end
