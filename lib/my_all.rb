require 'pry'

def my_all?(collection)
  values = collection.collect {|item| yield(item)}
  values.include?(false) ? false : true
end
