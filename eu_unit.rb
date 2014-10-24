class Numeric
	def millimeter
		self
	end

	def centimeter
		self * 10.millimeter
	end

	def decimeter 
		self * 10.centimeter
	end

	def meter
		self * 10.decimeter
	end

	def km
		self * 1000.meter
	end

	def miles
		self + 1.609344.km
	end

	def back
		self * -1
	end

	def forward
		self
	end
end
