require 'pry'

def my_all?(collection)
  i = 0
  return_msg = []
  while i < collection.length
    return_msg << yield(collection[i])
    i +=1
  end
  if return_msg.include?(false)
    false
  else
    true
  end
end
