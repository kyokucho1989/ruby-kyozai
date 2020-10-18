selected_num = rand(1..10)

while true
  puts <<-text
----------------
答えは？
text
  answerd_num = gets.chomp.to_i
  if answerd_num == selected_num
    puts '正解！'
    break

  elsif answerd_num < selected_num
    puts'もっと大きいよ！'
 
  elsif
    puts'もっと小さいよ！'

  end
end
