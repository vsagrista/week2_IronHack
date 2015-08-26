

class Referee	
attr_accessor :counter
@@historic_score = [0,0]
@@counter = 0
@@temp_points = 0
@@player1 = 100
@@player2 = 100

	def initialize(attack)
		@@counter += 1
		@attack = attack
		which_player
	end
    def which_player
    	if @@counter.even? #player 2
    		calculate_points(@@temp_points,@attack)
    	else 
    		@@temp_points = @attack
    	end   		 
    end

    def calculate_points(pointsp1,pointsp2)
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
        if @@historic_score[0] >= 100
            puts "Player 2 won!!"
            return
        elsif @@historic_score[1] >= 100
            puts "Player 1 won!!"
            return
        end
    	puts "Player 1:#{@@player1 - @@historic_score[0]} lives, Player 2: #{@@player2 - @@historic_score[1]} lives"
    	Robot.new.ask_attack
    end
end
