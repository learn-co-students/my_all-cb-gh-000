require 'pry'

def my_all? collection, &b
  collection.map(&b).all?
end
