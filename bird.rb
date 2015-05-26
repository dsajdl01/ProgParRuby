
class Bird

	attr_reader :name

	def initialize(name)
		@name = name
	end

	def call
		return "Hello!"
	end

	# keyword self gives access to the current object - the object
	# that is receiving the current message.
	def className
		self.class.to_s
	end

	def print
		puts name + " "+ className + " says " + call
	end
end

class Duck < Bird

	def initialize(name)
		super name
	end

	def call
		return "Qua qua"
	end
end

class Owl < Bird

	def initialize(name)
		super name
	end

	def call
		return "Hoo hoo"
	end
end


# Result:
#
# b = Bird.new("Pepa")			=>  #<Bird:0x00000000f47ba8 @name="Pepa">
# b.called 						=>   "Hello!"
# b.print 						=>    Pepa Bird says Hello!
#
# d = Duck.new("Donald")		=>  #<Duck:0x00000000d8ef28 @name="Donald">
# d.called 						=>   "Qua qua"
# d.print 						=>    Donald Duck says Qua qua
#
# o = Owl.new"Mice" 			=>  #<Owl:0x00000000d83498 @name="Mice">
# o.call 						=>   "Hoo hoo"
# o.print 						=>    Mice Owl says Hoo hoo
