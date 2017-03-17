require 'pry'

def my_all?(collection)
  bool = []
  i = 0
  while i < collection.length do
    bool << yield(collection[i])
    i += 1
  end

  if bool.include?(false)
    false
  else
    true
  end
end
