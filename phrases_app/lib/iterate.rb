class Iterate
	attr_accessor :array
	def initialize
		@array = ["I like beer.", "I play tennis.", "Travelling is my favourite activity."]
	end
	def new_iterate
	   @array.sample
    end
    def push_text(text)
    	@array << text
    end
end
