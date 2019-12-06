class Car
  MAKES = []
  CARS = {}
  attr_reader :make
  def self.total_count
    @total_count ||= 0
  end
  def self.total_count=(n)
    @total_count = n
  end
  def self.add_make(make)
    unless MAKES.include?(make)
      MAKES << make
      CARS[make] = 0
    end
  end
  def initialize(make)
    if MAKES.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      CARS[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}."
    end
  end
  def make_mates
    CARS[self.make]
  end
end

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Counting total cars..."
puts "There are #{Car.total_count}."
