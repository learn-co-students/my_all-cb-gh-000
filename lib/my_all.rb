require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i+=1
  end

  if block_return_values.include?(false)
    puts false
     false
  else
    puts true
     true
  end
end

my_all?([1,2,3,4,5,6,7]) do |i|
  i < 5
end
