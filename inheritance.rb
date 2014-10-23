class A
	attr_accessor :number
	
	def initialize()
		@number = 10
	end

	def get_value()
		return @number
	end

	def set_value(x)
		@number = @number + x
	end
end

class B <A

	def get_value()
		return @number.to_s + " wow"
	end
end

class C <B

	def initialize 
		@number = 5
	end
	
	def get_value()
		return @number - 1
	end
end