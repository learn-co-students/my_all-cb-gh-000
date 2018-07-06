require 'pry'

def my_all?(collection)
  i = 0
  arr = []
  while i < collection.length
    arr << yield(collection[i])
    i+=1
  end
  if arr.include?(false)
     false

 end
  else
    true
   end
 end
