

class Judge

	def initialize(a,b)
		@myhand = a #自分の出し方
		@yourhand = b #相手の出し方
	end

	def  zyanken_check #勝敗を決め結果を表示

		case (@myhand - @yourhand + 3) % 3  #勝敗の値を返す
			when 0
				puts "引き分けです"
			when 1
				puts "あなたの負けです"
			else
				puts "あなたの勝ちです"
		end
	end
end