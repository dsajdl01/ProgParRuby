class A
	attr_accessor :number
	
	def initialize(number)
		self.setValue(number)
	end

	def getValue()
		return @number.to_s + " A Class"
	end

	def setValue(x)
		@number = x
	end
	
	def increaseValueByX(x)
		@number = @number + x
	end

	def increaseValueByOne()
		@number = number + 1
		return @number - 1
	end
end

class B <A

	def getValue()
		return @number.to_s + " B Class"
	end

	def increaseValueByX(x)
		@number = @number +  3 + x
	end

	def setValue(x)
		@number = x + 3
	end

	def decreaseValueByTwo()
		@number = @number - 2
	end
end

class C <B 

	def initialize(number)
		setValue(number + 5)
	end
	
	def toString()
		return 'I am srtring number F ' + @number.to_s
	end
end

class D <B
	def initialize(number)
		@number = number - 5 
	end
	
	def d_value_is()
		return @number
	end

	def increaseValueByOne()
		@number = @number + 2
		puts "oops it is incresed by two"
	end
end

class E <C
	def initialize()
		@number = 5 
	end
	
	def getValue()
		return @number.to_s + " E Class"
	end
end