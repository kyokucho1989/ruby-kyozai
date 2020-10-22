require 'pry'
class Horse
  attr_reader :name ,:odds
  def initialize(name)
    @name = name
    @odds = (1 + rand(1..50) * 0.1).round(2)
    # puts "名前：#{@name} / オッズ #{@odds}"
  end
end

uma1 = Horse.new('タケウマライダー')
uma2 = Horse.new('ムササビモモンガ')
uma3 = Horse.new('ジャイロスコープ')

race_horse_list = [uma1,uma2,uma3]
# binding.pry
# p race_horse_list

# race_horse_list.each do |horse|
#   puts " #{horse.name} #{horse.odds}"

# end

race_horse_list.each_with_index do |horse,i|
  puts "No.#{i} #{horse.name} #{horse.odds}"

end