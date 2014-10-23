module ToFile
	def filename
		"object_#{self.object_id}.txt"
	end

	def to_f
		File.open(filename, 'w') {|f| f.write(to_s)}
	end
end

class Person
	include ToFile
	attr_accessor :name

	def initialize(name)
		@name = name
	end
	def to_s
		name
	end
end

# load to_file.rb 
irb(main):018:0> load './ruby/to_file.rb'
=> true

#input
irb(main):019:0> Person.new("David").to_f
#output
=> 5
# it also creates .txt file name similar as object_21446740.txt with content David.

#input
irb(main):021:0> Person.new("Rita").to_s
#output
=> "Rita"

#input
rb(main):021:0> Person.new("Rita and David").to_f
#output
=> 14