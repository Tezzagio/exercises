require './inheritance'

<<<<<<< HEAD
module FullNmae
	def full_name
		"#{first_name} #{last_name}"
	end
end

module Contactable
	def contact
		"#{first_name} #{last_name}@example.com"
	end
end

class Person
	include FullName
	include Contactable


	attr_reader :first_name, :last_name
	def initialize first_name, last_name
		@first_name = first_name
		@last_name = last_name
		end
	end

	class Developer < Employee
		include Contactable
	end

	Hannah = Person.new("Hannah", "Test")
	puts hannah.full_name
	puts hannah.contact

	dev = Developer.new("Steve", "Anderson")
	puts dev.full_name 
	puts dev.contact
=======
module FullName
  def full_name
    "#{first_name} #{last_name}"
  end
end


module Contactable
  def contact
    "#{first_name}.#{last_name}@example.com"
  end
end

class Person
  include FullName
  include Contactable

  attr_reader :first_name, :last_name
  def initialize first_name, last_name
    @first_name = first_name
    @last_name = last_name
  end
end

class Developer < Employee
  include Contactable
end

hannah = Person.new("Hannah", "Test")
puts hannah.full_name
puts hannah.contact

dev = Developer.new("Steve", "Anderson")
puts dev.full_name, dev.contact
>>>>>>> 024eff48595cdf7df415125df5ce3e6848e82c27
