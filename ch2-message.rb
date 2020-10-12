def introduce_mes()
  puts <<-text
数当てゲーム 
選んだ数字が1~10までのどれか当ててね
press enter
text
gets 
end

def correct_mes(score)
  puts '正解！'
  puts "得点は #{score}です！"
end
