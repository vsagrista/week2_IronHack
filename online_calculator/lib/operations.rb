class Calculator
	def initialize(number1,number2)
		@number1 = number1.to_i
		@number2 = number2.to_i
	end
	def addition
		@number1 + @number2
	end
	def substraction
		@number1 - @number2
	end
	def multiplication
		@number1 * @number2
	end
	def division
		@number1 / @number2
	end
end
