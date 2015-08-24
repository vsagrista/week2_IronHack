class Calculator
	def initialize(number1,number2)
		@number1 = number1
		@number2 = number2
	end
	def addition
		@number1.to_i + @number2.to_i
	end
end
