require 'enumerator'

class MyRange

	include Enumerable

	def initialize(first, last, step = 1)
		if(step == 0)
			raise "step connot be 0"
		end
		@first = first
		@last = last
		@step = step
	end

	def each
		i = @first
		while ((i <= @last && @step > 0 && @step > 0) || (i >= @last && @step < 0))
			yield i 
			i = i + @step
		end
	end
end

# Result
# 
# m = MyRange.new( 7, 70, 7)				=> #<MyRange:0x00000000fd4a80 @first=7, @last=70, @step=7>
# irb(main):043:0> m.each{|x| puts x}		7
# =>  										14
# =>  										21
# =>  										28
# =>  										35
# =>  										42
# =>  										49
# =>  										56
# =>     									63
# =>   										70
# 											=> nil



def myMethod()
	begin
		a = 3 / 0
		b = a 
	rescue Exception => e
		a = 4
	ensure
		a = 1
	end
	p a
	p b
end

# Resulr
# 1
# nill

def ticketPrice(noOfZone, age)
	p = 2.0 + (noOfZone - 1.0)
	return p/2.0 if (age <= 12 || age >= 60)
	return p
end

# Result:
#
# ticketPrice(1, 35) 			=> 2.0
# ticketPrice(2, 35) 			=> 3.0
# ticketPrice(2, 62) 			=> 1.5
# ticketPrice(1, 17) 			=> 2.0


	def totalTime( min, sec)

		if(sec.class == Array)
			sumSec = sec.reduce(:+)
		else
			sumSec = sec
		end
		if(min.class == Array)
			sumMin = min.reduce(:+)
		else
			sumMin = min
		end	
		
		total = (sumMin * 60) + sumSec

		return "Total = #{Time.at(total).utc.strftime("%H:%M:%S")}"
	end

	
def totalTime2(min ,sec)
	i = 0
	total = 0

	min.each{|x| result = ((x*60) +sec[i])
		total = result + total
		i = i + 1
	}
	return "Total collection = #{Time.at(total).utc.strftime("%H:%M:%S")}"
end
# enter array for totalTime and totalTime2 methods
minutes = [3 ,2, 5, 6, 2, 5, 8, 5, 3]
second = [15, 52, 5, 10, 49, 38, 2, 32, 47]

# Results;
#
# totalTime(minutes, second) 		=> "Total = 00:43:10"
# totalTime2(minutes, second) 		=> "Total collection = 00:43:10"

def spaceShip
	w = (1 <=> 2)
	r = (1 <=> 1.0)
	c = (r <=> w)
	p "Value of w is: " + w.to_s
	p "Value of r is: " + r.to_s
	p "Value of c is: " + c.to_s 
	p w + 2 * r + 4 * c
end

# Result:
#
# "Value of w is: -1"
# "Value of r is: 0"
# "Value of c is: 1"
# 3

def call_block
	puts 'The block is called by using yield keyword'
	yield
	yield
	puts 'End of method'
end
call_block{puts 'in the block'}

# Result:
#
# The block is called by using yield keyword
# in the block
# in the block
# End of method

def call_block2
	yield('hello world' , 99)
end

call_block2 {|str, num| puts str + ' ' + num.to_s}

# Result:
#
# hello world 99
