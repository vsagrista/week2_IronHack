require "pry"
require_relative "./attack.rb"
require_relative "./referee.rb"

class Robot

	attr_accessor  :current_attack
	def initialize
		#@points = 100
		@attacks = []
		set_attacks
	end

	def set_attacks
		@attacks << Attack.new("weak", 10)
		@attacks << Attack.new("strong", 20)
		@attacks << Attack.new("decisive", 50)
	end

	def ask_attack
		
		puts "Select an attack!"
		user_input = gets.chomp
		current_attack = @attacks.select { |attack| attack.name == user_input }.first
		Referee.new(current_attack.damage)
		#binding.pry
	end
end



robocop = Robot.new
madcop = Robot.new
robocop.ask_attack
madcop.ask_attack




