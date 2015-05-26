class Fan
	
	def startRotate
		puts "Fan is rotating"
	end

	def stopRotate
		puts "Fan is not rotating"
	end
end

class Light

	def turnOn
		puts "Light is on"
	end

	def turnOff
		puts "Light is off"
	end
end

class Command
	
	def initialize
		raise "This is an abstract class that cannot be instantiated"
	end

	def execute
	end
end


class Switch 
	
	def initialize(up, down)
		@up = up
		@down = down
	end

	def flipUp
		@up.execute
	end

	def flipDown
		@down.execute
	end

end

class LightOnCommand < Command

	def initialize light
		@light = light
	end
	def execute
		@light.turnOn
	end
end

class LightOffCommand < Command
	
	def initialize light
		@light = light
	end
	def execute
		@light.turnOff
	end
end

class FanOnCommand < Command

	def initialize fan
		@fan = fan
	end
	def execute
		@fan.startRotate
	end
end

class FanOffCommand < Command

	def initialize fan
		@fan = fan
	end
	def execute
		@fan.stopRotate
	end
end


# Result;
# testLight = Light.new 						=> #<Light:0x00000002433d50>
# testLOC = LightOnCommand.new(testLight)		=> #<LightOnCommand:0x000000023f3778 @light=#<Light:0x00000002433d50>>
# testLFC = LightOffCommand.new(testLight)		=> #<LightOffCommand:0x000000023eb9d8 @light=#<Light:0x00000002433d50>>
# ls = Switch.new(testLOC, testLFC)				=> #<Switch:0x000000023e35f8 @up=#<LightOnCommand:0x000000023f3778 @light=#<Light:0x00000002433d50>>, @down=#<LightOffCommand:0x000000023eb9d8 @light=#<Light:0x00000002433d50>>>
# ls.flipUp										=>   Light is on
# ls.flipDown									=>   Light is off
#
#
# testFan = Fan.new								=> #<Fan:0x000000023b1f30>
# foc = FanOnCommand.new(testFan)				=> #<FanOnCommand:0x000000023abbd0 @fan=#<Fan:0x000000023b1f30>>
# ffc = FanOffCommand.new(testFan)				=> #<FanOffCommand:0x000000023a5d98 @fan=#<Fan:0x000000023b1f30>>
# fs = Switch.new(foc, ffc)						=> #<Switch:0x0000000239f560 @up=#<FanOnCommand:0x000000023abbd0 @fan=#<Fan:0x000000023b1f30>>, @down=#<FanOffCommand:0x000000023a5d98 @fan=#<Fan:0x000000023b1f30>>>
# fs.flipUp										=>   Fan is rotating
# fs.flipDown									=>   Fan is not rotating