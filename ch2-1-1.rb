# require 'pry'
puts <<-text
おみくじを引いてみよう！
press enter
text
gets 
select_num = rand(1..3)
# binding.pry
if select_num == 1 
  puts '大吉！！！'
elsif select_num == 2
  puts '吉です'
elsif select_num == 3
  puts '凶……。'
end