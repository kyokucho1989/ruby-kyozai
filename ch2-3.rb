require 'pry'
puts <<-text
数当てゲーム 
選んだ数字が1~10までのどれか当ててね
press enter
text
gets 

selected_num = rand(1..10)

answer_times = 0

def calc_score(answer_times)
  initial_score = 100
  initial_score - answer_times * 10
end

while true
  puts <<-text
----------------
答えは？
text
  answerd_num = gets.chomp.to_i
  if answerd_num == selected_num
    score = calc_score(answer_times)
    puts '正解！'
    puts "得点は #{score}です！"
    break

  elsif answerd_num < selected_num
    puts"もっと大きいよ！ #{score}"

  elsif
    puts"もっと小さいよ！#{score}" 

  end
  answer_times += 1
end

