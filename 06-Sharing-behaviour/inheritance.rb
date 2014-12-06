require './employee'
require './manager'
require './marekteer'

<<<<<<< HEAD
#Sharing Behavior and Variables.

# Create an employee class.
class Employee
	attr_accessor :first_name, :last_name, :title, :twitter_username

	def initialize(first_name, last_name, title, twitter_username)
		@first_name = first_name
		@last_name = last_name
	end

def full_name
	"#{@first_name} #{@last_name} #{@title}"
	end
end

	def contact
		@email
	end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee

	def initialize(first_name, last_name, title, twitter_username="acme")
		super(first_name, last_name)
		@twitter_username = twitter_username	
	end

def full_name
	"@{first_name} #{@last_name} #{@title}"
end

def contact
	@twitter_username
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
end

manager = Manager.new("Bob", "Builder", "MBA", "bob@acme.org")

manager = Marketer.new("Seth", "Godin", "@Seth")

manager2= Marketer2.new("Jo", "Johannson")

puts "Name: ", manager.full_name
puts "Contact: ", manager.contact 

puts "Name: ", marketer.full_name
puts "Contact: ", marketer.contact 

puts "Name: ", marketer2.full_name
puts "Contact: ", marketer2.contact 

# BONUS: Demonstrate how to make this code less error-prone by using named arguments
# 		 for the initializers
=======
manager = Manager.new("Bob", "Builder", "MBA", "bob@acme.org")

marketer = Marketer.new("Seth", "Godin", "@seth")

marketer2 = Marketer.new("Jo" , "Johannson")
puts "Name: ", manager.full_name
puts "Contact: ", manager.contact

puts "Name: ", marketer.full_name
puts "Contact:", marketer.contact


puts "Name: ", marketer2.full_name
puts "Contact:", marketer2.contact

>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27
