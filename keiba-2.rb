require 'pry'
class Horse
  attr_reader :name ,:odds
  def initialize(name)
    @name = name
    @odds = (1 + rand(1..50) * 0.1).round(2)
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

def select_horse(race_horse_list)
  loop do
    puts "どの馬に掛けますか？ No."
    selected_horse_num = gets.chomp.to_i
    if selected_horse_num <= race_horse_list.length - 1
      break selected_horse_num
    end
    puts "オッズに表示されているNo.を入力してください"
  end
end

def bet_money(user)
  loop do
    puts "いくら掛けますか？"
    bet_money = gets.chomp.to_i
    if bet_money <= user.money
      user.money -= bet_money
      break bet_money
    end
    puts "所持金以上の値を入力しないでください"
  end
end

user1 = User.new('太郎')

uma1 = Horse.new('タケウマライダー')
uma2 = Horse.new('ムササビモモンガ')
uma3 = Horse.new('ジャイロスコープ')

race_horse_list = [uma1,uma2,uma3]

# メニュー
puts <<-text
------------
　競馬プログラム
　あなたの名前：#{user1.name} 
-------------
text

while true
  puts <<-text
  ------------
  所持金：#{user1.money}円
  -------------
  text

  # オッズの表示
  race_horse_list.each_with_index do |horse,i|
    puts "No.#{i} #{horse.name} #{horse.odds}倍"
  end

  # 賭ける馬と賭け金の選択
  selected_horse_num = select_horse(race_horse_list)
  # loop do
  #   puts "どの馬に掛けますか？ No."
  #   selected_horse_num = gets.chomp.to_i
  #   if selected_horse_num <= race_horse_list.length - 1
  #     break
  #   end
  #   puts "オッズに表示されているNo.を入力してください"
  # end

  bet_money = bet_money(user1)
  # loop do
  #   puts "いくら掛けますか？"
  #   bet_money = gets.chomp.to_i
  #   if bet_money <= user1.money
  #     user1.money -= bet_money
  #     break bet_money
  #   end
  #   puts "所持金以上の値を入力しないでください"
  # end

  # レーススタート

  puts "レーススタート... push enter"
  gets
  win_num = rand(race_horse_list.length)
  # win_num =selected_horse_num
  win_horse = race_horse_list[win_num]
  puts "勝ったのは #{win_horse.name}!!!"

  # 料金払い戻し
  win_money = (bet_money * win_horse.odds).to_i

  if selected_horse_num == win_num
    puts "おめでとうございます！！"
    puts "#{win_money}円獲得！！"
    user1.money += win_money
  else
    puts"ハズレ...."
  end
  puts "終了しますか？　終了する場合はyを入力"
  input_text = gets.chomp
  if (input_text == 'y')
    break
  end
end
 
