require './judge.rb'
require './zyanken_flow.rb'




puts "敵：じゃんけんしようぜ!"
battle1 = Battle.new
my,your = battle1.flow
onetime = Judge.new(my,your) #一回目の勝負
onetime.zyanken_check

puts "もう一回やるか"
battle1 = Battle.new
my,your = battle1.flow
onetime = Judge.new(my,your) #一回目の勝負
onetime.zyanken_check
