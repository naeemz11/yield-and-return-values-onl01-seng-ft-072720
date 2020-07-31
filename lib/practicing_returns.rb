require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
    binding.pry 
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
