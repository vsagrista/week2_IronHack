require_relative "./attack.rb"
require_relative "./referee.rb"
require_relative "./robot.rb"


class Cage
	def initilize(fight)
		@fight = fight
        
	end

    def continue_playing
    	# start game
        Robot.new.ask_attack
    end

    def game_over?
    	#declare champion
        # else 
        # keep going
    end

end


new_fight = Cage.new("Ultimate fight")