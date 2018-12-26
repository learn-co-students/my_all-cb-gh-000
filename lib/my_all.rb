require 'pry'

def my_all?(collection)
  i = 0
  finalcollection = []
  while i < collection.length
    finalcollection << yield(collection[i])
    i += 1
  end
  
  if finalcollection.include?(false)
    false
  else
    true
  end
end