require 'pry'

def my_all?(collection)
  ret = []
  i = 0
  while i< collection.length do
    ret << yield(collection[i])
    i += 1
  end
  ret.include?(false) ? false : true
end
