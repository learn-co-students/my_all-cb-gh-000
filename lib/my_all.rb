require 'pry'

def my_all?(collection)

  flag =true
  i = 0
  while i< collection.size
    flag &= yield(collection[i])
    break if !flag
    i+=1
  end
  flag
end
