require 'pry'
puts <<-text
　ヘンテコ村へようこそ！用件はなんでしょう？
[1]:村長の家はどこ？
[2]:武器屋はあるか？
[3]:興味ないね
text
 
select_num = gets.chomp
binding.pry
if select_num == 1 
  puts 'この角を曲がったところにありますよ。'
elsif select_num == 2
  puts 'そんな野蛮な店、この村にはありませんよ。'
elsif select_num == 3
  puts 'そうですか……。'
end