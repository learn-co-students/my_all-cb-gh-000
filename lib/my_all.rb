require 'pry'

def my_all?(c)
  i,t=-1,true;t&=yield(c[i])while(i+=1)<c.size;t
end
