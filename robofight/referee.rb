

class Referee	

@@historic_score = [0,0]
@@counter = 0
@@temp_points = 0

	def initialize(attack)
		@@counter += 1
		@attack = attack
		which_player
	end
    def which_player
    	if @@counter.even? #player 2
    		puts @@temp_points
    		#@@historic_score[1] = @attack
    		calculate_points(@@temp_points,@attack)
    	else 
    		@@temp_points = @attack
    	end   		 
    end

    def calculate_points(pointsp1,pointsp2)
    	#binding.pry
    	if pointsp1 == 10 && pointsp2 == 10
    		true
    	elsif pointsp1 == 20 && pointsp2 == 20
    		@@historic_score[0]+= 40
    		@@historic_score[1]+=40
    		puts "yes"
    	elsif pointsp1 == 50 && pointsp2 == 50
    		puts "That was too strong, you both lost!"
            return 
    	elsif pointsp1 == 10 && pointsp2 == 50 
    		@@historic_score[0]+=10
    	elsif pointsp2 == 10 && pointsp1 == 50
    		@@historic_score[1]+=10
    	else
    		@@historic_score[0] = pointsp1
    		@@historic_score[1] = pointsp2
    	end
    	if @@counter.even?
    		show_score
    	end
    	Robot.new.ask_attack	
    end
    		

    def show_score
    	puts "Player 1:#{@@historic_score[0]} points, Player 2: #{@@historic_score[1]}"
    	Robot.new.ask_attack

    end
end
