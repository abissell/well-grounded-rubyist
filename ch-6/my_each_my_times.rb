class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c += 1
    end
    self
  end
end

class Integer
  def my_times
    arr = (0..(self-1)).to_a
    arr.my_each {|i| yield i }
    self
  end
end

puts 5.my_times {|i| puts "I'm on iteration #{i}!" }
