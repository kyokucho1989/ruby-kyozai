require 'pry'
class Horse
  attr_reader :name ,:odds
  def initialize(name)
    @name = name
    @odds = (1 + rand(1..50) * 0.1).round(2)
    # puts "名前：#{@name} / オッズ #{@odds}"
  end
end

class User
  attr_reader :name
  attr_accessor :money
  MONEY = 1000
  def initialize(name)
    @name = name
    @money = MONEY
  end
end

uma1 = Horse.new('タケウマライダー')
uma2 = Horse.new('ムササビモモンガ')
uma3 = Horse.new('ジャイロスコープ')

race_horse_list = [uma1,uma2,uma3]
bi
# オッズの表示
race_horse_list.each_with_index do |horse,i|
  puts "No.#{i} #{horse.name} #{horse.odds}"

end