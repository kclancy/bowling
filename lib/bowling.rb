module Bowling
	class Game

		attr_accessor :score

		def initialize			
		end

		def result

			score = 0
			i = 0

			@score.each_char { |s|
				score += scoreRoll s
				#score += bonusScore(s, i)
				i += 1
			}

			score

		end

		def scoreRoll (s)
			return 10 if s == "X"
			return s.to_i if (1..9).include?(s.to_i)

			0
		end

		def bonusScore (index)
			score = 0
			(1..2).each do |i|
				#score += scoreRoll(@score[index + i])	
			end
		end

	end
end