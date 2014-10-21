class Bottle
	attr_accessor :content
	def initialize(content)
		@content = content
		if content == "water"
			puts "pour #{content}"
		elsif content == "wine"
			puts "decant #{content}"
		else
			puts "no idea what this is!"
		end
	end
end
