# Writing out the #all? method

# Using Pry for debugging purposes.
require 'pry'

# Method will pass through each element of the collection (array) to the given block.
# The method returns true if the block never returns false or nil.
# If the block is not given, Ruby adds an implicit block of {|obj| obj}
# (that is all? will return true only if none of the collection members are false or nil.)
def my_all?(collection)
  i = 0
  # Declare the array before entering the while loop.
  block_return_values = []
  # Iterate through each element in the passed in collection using the simple lower level iterator 'while'.
  while i < collection.length
    # When this code is run and it hits the yield line, it will send whatever is passed in as the argument to the block.
    # Shovel (<<) the return value of the block into the array.
    block_return_values << yield(collection[i])
    # Update the counter.
    i += 1
  end

  # Method to finally determine the return value of the #my_all? method by using the #include method which will
  # return true only if the given object is present in the 'block_return_values' array.
  if block_return_values.include?(false)
    false
  else
    true
  end
end

# Testing the #my_all? method with a short array.
my_all?([1,2,3]) {|i| i < 2}
