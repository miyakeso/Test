
class Battle

	@@ROCK = 1 #グー
	@@SCISSORS = 2 #チョキ
	@@PAPER = 3 #バー
	@@pattern = @@ROCK,@@SCISSORS,@@PAPER #相手のパターン


	def flow
		puts "あなたのターンです。何を出しますか？"
		puts "数字を入力してください グー:1 チョキ:2 パー:3"

		ok = 0 #フラグ

		until ok == 1 do #指定の数字が入力するまで入力させる 抜ける条件はフラグが1になったとき
			@myhand = gets.chomp.to_i

			if @myhand == 1 || @myhand ==2 || @myhand ==3
				ok = 1
			else
				puts "指定の値入れろやボケ"
			end
		end

		@yourhand = @@pattern.sample #相手の出し方

		case @yourhand #相手の出し方出力
		when 1
			puts "相手はグーを出しました"
		when 2
			puts "相手はチョキを出しました"
		else
			puts "相手はパーを出しました"
		end
		return  @myhand,@yourhand
	end
end