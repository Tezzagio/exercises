require './resident'
<<<<<<< HEAD
=======

#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min
>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27

class Apartment
  attr_accessor :size, :number_of_bedrooms, :floor, :name

  def initialize(size, number_of_bedrooms, floor, name)
    @size = size
    @number_of_bedrooms = number_of_bedrooms
    @floor = floor
    @name = name
    @residents = []
  end

  def is_occupied?
    @residents.count > 0
  end

  def residents
    @residents.map do |resident|
      resident.name
    end
  end

  def add_resident(resident)
    puts "Adding #{resident}"
    @residents << resident
  end

  def to_s
    "Hi I'm an Apartment, I have: #{@residents.count} residents: #{residents.join(", ")}"
  end
end

my_flat = Apartment.new(96, 2, 2, "the sweet spot")

my_flat.add_resident Resident.new("Jo")
my_flat.add_resident Resident.new("Steve")

if my_flat.is_occupied?
  puts "Someone is living here!"
else
  puts "Flat is empty"
end


puts my_flat

<<<<<<< HEAD
	attr_accessor :number_of_bedrooms, :size, :floor, :name

 	def initialize(number_of_bedrooms, size, floor, name)
 		@size = size
 		@residents = residents
	 	@number_of_bedrooms = number_of_bedrooms
	 	@name = name
	 	@floor = floor
	 	@residents = [] 
 	end

 	def is_occupied?
 		@residents.count > 0
 	end

 	def residents
  	@residents.map do |resident|
    		resident.name
    	end
  end


 	def residents
 		@residents
 	end

 	def add_resident(name)
 		puts "Adding #{name}"
 		@residents << name
 	end

 	def to_s
 		"Hi i'm an Apartment, I have : #{@residents.count} residents: #{residents.join(", ")}"
 	end
end

my_flat = Apartment.new(96, 2, 2, "the sweet spot")
my_flat.add_resident Resident.new("Jo")
my_flat.add_resident Resident.new("Steve")


if my_flat.is_occupied?
	puts "Someone is living here"
else
	puts "My Flat is Empty"
end

puts my_flat
puts "Residents: #{my_flat.residents}"
=======
>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27
