require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
    block_return_values << yield(collection[i])
    i += 1
  end
  if 
  block_return_values.include?(false)
    false
  else
    true
  end
end
numbers = [1,2,3]
binding.pry
my_all?(numbers) { |x| x < 2 }

#ruby lib/my_all.rb