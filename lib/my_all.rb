require 'pry'

def my_all?(collection)
	collection.each do |item|
		if (!yield(item))
			return false
		end
	end
	true
end
