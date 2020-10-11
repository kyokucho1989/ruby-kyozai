require 'pry'
require './ch2-message'

# def introduce_mes()
#   puts <<-text
# 数当てゲーム 
# 選んだ数字が1~10までのどれか当ててね
# press enter
# text
# gets 
# end

# def correct_mes(score)
#   puts '正解！'
#   puts "得点は #{score}です！"
end

def calc_score(answer_times)
  initial_score = 100
  initial_score - answer_times * 10
end


introduce_mes()
selected_num = rand(1..10)

answer_times = 0
while true
  puts <<-text
----------------
答えは？
text
  answerd_num = gets.chomp.to_i
  if answerd_num == selected_num
    score = calc_score(answer_times)
    correct_mes(score)
    break

  elsif answerd_num < selected_num
    puts"もっと大きいよ！"

  elsif
    puts"もっと小さいよ！" 

  end
  answer_times += 1
end

